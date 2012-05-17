package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCTitleAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		public var rh:RecordHeader;
		
		/**
		 * title (variable): A UnicodeString that specifies the title of the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var title
		
		public function BCTitleAtom() 
		{
			
		}
		
	}

}