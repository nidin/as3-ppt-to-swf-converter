package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class ModifyPasswordAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		/**
		 * modifyPassword (variable): A PrintableUnicodeString that specifies a password used to modify the document. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var modifyPassword
		
		
		public function ModifyPasswordAtom() 
		{
			
		}
		
	}

}