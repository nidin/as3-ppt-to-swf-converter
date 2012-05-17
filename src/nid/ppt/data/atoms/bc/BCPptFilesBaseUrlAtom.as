package nid.ppt.data.atoms.bc 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCPptFilesBaseUrlAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x00F.
           rh.recType
           MUST be RT_CString.
           rh.recLen
           MUST be an even number. It MUST be less than 4118.
		 * 
		 * 
		 */
		   public var rh:RecordHeader;
		   /**
		    * pptFilesBaseUrl (variable): A UncPathOrHttpUrl that specifies the location of the files for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		    */
		   public var pptFilesBaseUrl 
		public function BCPptFilesBaseUrlAtom() 
		{
			
		}
		
	}

}