package nid.ppt.data.atoms.bc 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCPresentationNameAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
          rh.recVer
          MUST be 0x0.
          rh.recInstance
          MUST be 0x012.
          rh.recType
          MUST be RT_CString.
          rh.recLen
          MUST be an even number. It MUST be less than 510.
		 */
		  
		  public var rh:RecordHeader;
		  
		  /**
		   * presentationName (variable): A FileOrDirNameFragment that specifies the name of the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		   */
		  public var presentationName
		  
		public function BCPresentationNameAtom() 
		{
			
		}
		
	}

}