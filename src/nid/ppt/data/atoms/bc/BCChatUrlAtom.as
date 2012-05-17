package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCChatUrlAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * chatUrl (variable): An HttpUrl that specifies the URL of a chat server for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var chatUrl 
		public function BCChatUrlAtom() 
		{
			
		}
		
	}

}