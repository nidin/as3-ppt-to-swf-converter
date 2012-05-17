package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCDescriptionAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		public var rh:RecordHeader;
		/**
		 * description (variable): A UnicodeString that specifies the description of the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var description
		
		public function BCDescriptionAtom() 
		{
			
		}
		
	}

}