package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class Directory 
	{
		public var entries:Vector.<DirectoryEntry>;
		
		public function Directory(bytes:BinaryData, header:CFHeader) 
		{
			bytes.position = (header.firstDirectorySectorLocation + 1) * header.sectorSize;
			
			trace('Directory offset:' + bytes.position);
			
			entries = new Vector.<DirectoryEntry>();
			
			for (var i:int = 0; i < 8; i++)
			{
				entries.push(new DirectoryEntry(bytes));
			}
			
		}
		public function toString():String
		{
			var s:String=''
			for (var i:int = 0; i < entries.length; i++)
			{
				s += ' ' + entries[i].toString() + '\n';
			}
			return s;
		}
	}

}