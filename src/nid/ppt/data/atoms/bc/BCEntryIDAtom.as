package nid.ppt.data.atoms.bc 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCEntryIDAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 * Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x014.
           rh.recType
           MUST be RT_CString.
           rh.recLen
           MUST be an even number.
		 * 
		 */
		   public var rh:RecordHeader;
		   /**
		    * entryId (variable): A UnicodeString that specifies the calendar item identifier for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen
		    */
		   public var entryId:String; 
			
		public function BCEntryIDAtom() 
		{
			
		}
		
	}

}