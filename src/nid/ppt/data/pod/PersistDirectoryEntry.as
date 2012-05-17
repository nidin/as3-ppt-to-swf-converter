package nid.ppt.data.pod 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PersistDirectoryEntry 
	{
		/**
		 * persistId (20 bits): An unsigned integer that specifies a starting persist object identifier. It MUST be less than or equal to 0xFFFFE. The first entry in rgPersistOffset is associated with persistId. The next entry, if present, is associated with persistId plus 1. Each entry in rgPersistOffset is associated with a persist object identifier in this manner, with the final entry associated with persistId + cPersist – 1.
		 */
		public var persistId:uint;
		
		/**
		 * cPersist (12 bits): An unsigned integer that specifies the count of items in rgPersistOffset. It MUST be greater than or equal to 0x001.
		 */
		 
		public var cPersist:uint;
		
		/**
		 * rgPersistOffset (variable): An array of PersistOffsetEntry that specifies stream offsets to persist objects. The count of items in the array is specified by cPersist. The value of each item MUST be greater than or equal to offsetLastEdit in the corresponding user edit and MUST be less than the offset, in bytes, of the corresponding persist object directory.
		 */
		 
		ppublic var rgPersistOffset
		
		
		public function PersistDirectoryEntry() 
		{
			
		}
		
	}

}