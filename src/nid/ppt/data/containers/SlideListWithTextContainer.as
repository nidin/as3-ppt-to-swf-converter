package nid.ppt.data.containers 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SlideListWithTextContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * rgChildRec (variable): An array of SlideListWithTextSubContainerOrAtom records that specifies the references to presentation slides and text contained within those presentation slides. The sequence of the rh.recType fields of array items MUST be a valid SlideListWithTextRecordList as specified in the following ABNF (specified in [RFC5234]) grammar
		 */
		 
		public var rgChildRec; 
		 
		public function SlideListWithTextContainer() 
		{
			
		}
		
	}

}