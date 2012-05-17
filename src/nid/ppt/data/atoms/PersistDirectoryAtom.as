package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PersistDirectoryAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;	
		
		/**
		 * rgPersistDirEntry (variable): An array of PersistDirectoryEntry structures that specifies persist object identifiers and stream offsets to persist objects. The size, in bytes, of the array is specified by rh.recLen.
		 */
		
		public var rgPersistDirEntry
		
		
		
		
		
		
		
		public function PersistDirectoryAtom() 
		{
			
		}
		
	}

}