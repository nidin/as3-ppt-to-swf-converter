package nid.ms 
{
	import nid.ms.cf.CFHeader;
	import nid.ms.cf.Directory;
	import nid.ms.cf.FAT;
	import nid.ms.cf.MiniFAT;
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class CompoundFile 
	{
		public var header:CFHeader;
		public var fat:FAT;
		public var miniFat:MiniFAT;
		public var dir:Directory;
		
		public function CompoundFile(bytes:BinaryData) 
		{
			header 	= new CFHeader(bytes);
			fat 	= new FAT(bytes, header);
			miniFat = new MiniFAT(bytes, header);
			dir		= new Directory(bytes, header);
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