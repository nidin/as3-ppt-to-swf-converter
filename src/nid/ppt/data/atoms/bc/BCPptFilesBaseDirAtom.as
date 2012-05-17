package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCPptFilesBaseDirAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.Field Meaning
           rh.recVer
           MUST be 0x0.
		 */
		public var rh:RecordHeader;
		/**
		 *pptFilesBaseDir (variable): A UncPath that specifies the path to the UNC base directory to store files for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen. 
		 */
		public var pptFilesBaseDir
		public function BCPptFilesBaseDirAtom() 
		{
			
		}
		
	}

}