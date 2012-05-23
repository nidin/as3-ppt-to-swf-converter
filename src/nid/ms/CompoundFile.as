package nid.ms 
{
	import nid.ms.cf.CFHeader;
	import nid.ms.cf.FAT;
	import nid.ms.cf.MiniFAT;
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author ...
	 */
	public class CompoundFile 
	{
		public var header:CFHeader;
		public var fat:FAT;
		public var miniFat:MiniFAT;
		
		public function CompoundFile(bytes:BinaryData) 
		{
			header 	= new CFHeader(bytes);
			fat 	= new FAT(bytes, header.firstFatSectorLocation, header.sectorSize);
			miniFat = new MiniFAT(bytes, header.firstFatSectorLocation, header.sectorSize);
		}
		
		public function toString():String
		{
			return  '[CFB]\n' + header.toString() + 
					'\n\t[FAT]\n\t ' + fat.toString() + 
					'\n\t[MiniFAT]\n\t ' + miniFat.toString();
		}
		
	}

}