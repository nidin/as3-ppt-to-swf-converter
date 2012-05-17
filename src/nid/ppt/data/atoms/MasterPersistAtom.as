package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class MasterPersistAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * persistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of the MainMasterContainer record for a main master slide or a SlideContainer record for a title master slide
		 */
		 
		public var persistIdRef
		
		/**
		 * A - reserved1 (2 bits): MUST be zero and MUST be ignored.
		 */ 
		
	    public reserved1:int;
		
		/**
		 * B - fNonOutlineData (1 bit): A bit that specifies whether the main master slide or title master slide specified by the persistIdRef field contains data other than text in a placeholder shape.
		 */
		
		public fNonOutlineData:int;
		
		/**
		 * reserved2 (29 bits): MUST be zero and MUST be ignored
		 */
		
		public var reserved2:int;
		
		/**
		 * reserved3 (4 bytes): MUST be zero and MUST be ignored
		 */
		 
		public var reserved3:int;
		
		/**
		 * masterId (4 bytes): A MasterId that specifies the identifier for the main master slide or title master slide specified by the persistIdRef field.
		 */
		 
		public var masterId
		
		/**
		 * reserved4 (4 bytes): MUST be zero and MUST be ignored
		 */
		 
		public var reserved4:int;
		
		 
		public function MasterPersistAtom() 
		{
			
		}
		
	}

}