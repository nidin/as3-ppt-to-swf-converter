package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCContactAtom 
	{
	     /**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		/**
		 * contact (variable): A PrintableUnicodeString that specifies the name of the contact person for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var contact
		
		
		public function BCContactAtom() 
		{
			
		}
		
	}

}