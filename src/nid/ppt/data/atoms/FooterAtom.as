package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class FooterAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * footer (variable): A PrintableUnicodeString that specifies the text for the footer. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var footer
		
		
		public function FooterAtom() 
		{
			
		}
		
	}

}