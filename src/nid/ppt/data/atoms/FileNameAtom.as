package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class FileNameAtom 
	{  
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_CString.
           rh.recLen
           MUST be an even number. It MUST be less than or equal to 510.
		 */
		   public var rh:RecordHeader;
		   /**
		    * fileName (variable): A PrintableUnicodeString that specifies a local path, a UNC path, or a URI (specified in [RFC3986]) with the HTTP or FTP scheme. The length, in bytes, of the field is specified by rh.recLen. See [MSDN-FILE] for more information about file naming.
		    */
		   public var fileName
		   
		  
		public function FileNameAtom() 
		{
			
		}
		
	}

}