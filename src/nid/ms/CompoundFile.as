package nid.ms 
{
	import flash.utils.ByteArray;
	import nid.ms.cf.CFHeader;
	import nid.ms.cf.Directory;
	import nid.ms.cf.DirectoryEntry;
	import nid.ms.cf.DirectoryObjectType;
	import nid.ms.cf.FAT;
	import nid.ms.cf.MiniFAT;
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class CompoundFile 
	{
		public var bytes:BinaryData;
		public var header:CFHeader;
		public var fat:FAT;
		public var miniFat:MiniFAT;
		public var dir:Directory;
		
		public function CompoundFile(ba:ByteArray=null) 
		{
			if (ba != null) {
				loadBytes(ba);
			}
		}
		public function loadBytes(ba:ByteArray):void
		{
			bytes = new BinaryData();
			ba.readBytes(bytes);
			header 	= new CFHeader(bytes);
			fat 	= new FAT(bytes, header);
			miniFat = new MiniFAT(bytes, header);
			dir		= new Directory(bytes, header);
			
			parseDirectoryData();
		}
		public function getDirectoryByName(name:String):DirectoryEntry
		{
			for (var i:int = 0; i < dir.entries.length; i++)
			{
				if (dir.entries[i].name == name)
				{
					return dir.entries[i];
				}
			}
			return null;
		}
		private function parseDirectoryData():void 
		{
			for (var i:int = 0; i < dir.entries.length; i++)
			{
				switch(dir.entries[i].objectType)
				{
					case DirectoryObjectType.RootStorageObject:break;
					case DirectoryObjectType.StorageObject:break;
					case DirectoryObjectType.StreamObject:
					{
						trace(dir.entries[i].name);
						if (dir.entries[i].name == 'PowerPoint Document')
						{
							if (dir.entries[i].streamSizeLow <= header.miniStreamCutOffSize)
							parseMiniFatData(dir.entries[i]);
							else
							parseFatData(dir.entries[i]);
						}
						break;
					}
					case DirectoryObjectType.Unknown:break;
				}
			}
		}
		
		private function parseMiniFatData(d:DirectoryEntry):void 
		{
			trace('parseMiniFatData');
			var si:int = d.startingSectorLocation;
			var count:int = 0;
			
			while (miniFat.sectors.length > si && miniFat.sectors[si].value != FAT.ENDOFCHAIN)
			{
				//trace('sect:' + si);
				si = miniFat.sectors[si].value;
				bytes.position = si * 64;
				//trace('bytes.position:' + bytes.position, bytes.length);
				try {
					bytes.readBytes(d.data, d.data.length, 64);
				}catch(e:Error)
				{
					trace(e);
					trace('count:' + count);
					trace(d.data.length);
				}
				count++;
			}
			
			if(miniFat.sectors.length > si)
			{
				var lastSectorSize:uint = d.streamSizeLow - d.data.length;
				bytes.readBytes(d.data, d.data.length, lastSectorSize);
			}
			
			
			trace('count:' + count);
			trace(d.data.length);
			trace(d.data);
		}
		
		private function parseFatData(d:DirectoryEntry):void 
		{
			trace('parseFatData');
			var si:int = d.startingSectorLocation;
			var count:int = 0;
			
			trace('bytes.position:' + bytes.position, bytes.length);
			
			while (fat.sectors.length > si && fat.sectors[si].value != FAT.ENDOFCHAIN)
			{
				si = fat.sectors[si].value;
				//trace('sect:' + si);
				bytes.position = (si + 1) * header.sectorSize;
				try {
					bytes.readBytes(d.data, d.data.length, header.sectorSize);
				}catch(e:Error)
				{
					trace(e);
					trace('count:' + count);
					trace(d.data.length);
				}
				count++;
			}
			
			if(fat.sectors.length > si)
			{
				var lastSectorSize:uint = d.streamSizeLow - d.data.length;
				bytes.readBytes(d.data, d.data.length, lastSectorSize);
			}
			
			
			trace('count:' + count);
			trace(d.data.length);
		}
		
		public function toString():String
		{
			return  '[CFB]\n' + header.toString() + 
					'\n\t[FAT]\n\t ' + fat.toString() + 
					'\n\t[MiniFAT]\n\t ' + miniFat.toString() +
					'\n\t[Directory]\n ' + dir.toString();
		}
		
	}

}