package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCEmailAddressAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		/**
		 *emailAddress (variable): A PrintableUnicodeString that specifies the e-mail address for audience feedback for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen. 
		 */
		public var emailAddress
		
		
		public function BCEmailAddressAtom() 
		{
			
		}
		
	}

}