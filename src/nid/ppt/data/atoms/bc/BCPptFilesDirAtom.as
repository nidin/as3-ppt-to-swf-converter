package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCPptFilesDirAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x00E.
           rh.recType
           MUST be RT_CString.
           rh.recLen
           MUST be an even number. It MUST be less than 494.
		 */
		   public var rh:RecordHeader;
		   /**
		    * pptFilesDir (variable): A UncPath that specifies the path to the UNC directory to store files for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		    */
		   public var pptFilesDir
		   
		public function BCPptFilesDirAtom() 
		{
			
		}
		
	}

}