package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class Directory 
	{
		private var entries:Vector.<DirectoryEntry>;
		
		public function Directory(bytes:BinaryData, sector_num:uint, sectorSize:uint) 
		{
			entries = new Vector.<DirectoryEntry>();
			var length:uint = 12;
			for (var i:int = 0; i < length; i++)
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