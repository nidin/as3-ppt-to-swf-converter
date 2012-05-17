package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCArchiveDirAtom 
	{
	    /**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;	
		
		/**
		 * archiveDir (variable): A UncOrLocalPath that specifies the UNC directory location for archival storage of the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		 */
		
		 public var archiveDir
		 
		public function BCArchiveDirAtom() 
		{
			
		}
		
	}

}