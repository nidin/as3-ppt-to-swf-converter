package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class NamedShowAtom 
	{
		
		public function NamedShowAtom() 
		{
		 /**
		  * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
            rh.recVer
            MUST be 0x0.
            rh.recInstance
            MUST be 0x001.
            rh.recType
            MUST be RT_CString.
            rh.recLen
            MUST be an even number. It MUST be less than or equal to 62.
		  * 
		  * 
		  * 
		  * 
		  */
		}
		public var rh:RecordHeader;
		/**
		 * namedShow (variable): A PrintableUnicodeString that specifies the named show to publish. It MUST be the same as the value of the namedShowName field of a NamedShowNameAtom record. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var namedShow
		/**
		 * 
		 */
		
	}

}