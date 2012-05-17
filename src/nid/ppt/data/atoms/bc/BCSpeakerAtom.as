package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCSpeakerAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		public var rh:RecordHeader;
		/**
		 *speaker (variable): A PrintableUnicodeString that specifies the name of the speaker for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen. 
		 */
		public var speaker
		/**
		 * 
		 */
		public function BCSpeakerAtom() 
		{
			
		}
		
	}

}