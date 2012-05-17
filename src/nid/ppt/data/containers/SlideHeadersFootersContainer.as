package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.FooterAtom;
	import nid.ppt.data.atoms.HeadersFootersAtom;
	import nid.ppt.data.atoms.UserDateAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SlideHeadersFootersContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * hfAtom (12 bytes): A HeadersFootersAtom record that specifies the options for displaying the footers. The hfAtom.fHasHeader sub-field MUST be ignored.
		 */
		 
		public var hfAtom:HeadersFootersAtom;
		
		/**
		 * userDateAtom (variable): An optional UserDateAtom record that specifies the custom date to be used in the date field.
		 */
		
		public var userDateAtom:UserDateAtom;
		
		/**
		 * footerAtom (variable): An optional FooterAtom record that specifies the content of the footer.
		 */
		 
		public var footerAtom:FooterAtom;
		
		 
		public function SlideHeadersFootersContainer() 
		{
			
		}
		
	}

}