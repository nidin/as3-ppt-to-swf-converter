package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class AuthorNameAtom 
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
           MUST be an even number. It MUST be less than or equal to 104.
		 */
		   public var rh:RecordHeader;
		   /**
		    * authorName (variable): A PrintableUnicodeString that specifies the name of the author. The length, in bytes, of the field is specified by rh.recLen.
		    */
		   public var authorName
		   
		public function AuthorNameAtom() 
		{
			
		}
		
	}

}