package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.FooterAtom;
	import nid.ppt.data.atoms.HeaderAtom;
	import nid.ppt.data.atoms.HeadersFootersAtom;
	import nid.ppt.data.atoms.UserDateAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class NotesHeadersFootersContainer 
	{
	/**
	 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
	 */
	public var rh:RecordHeader;
	
	/**
	 * hfAtom (12 bytes): A HeadersFootersAtom record that specifies the options for displaying the headers and footers.
	 */
	
	public var hfAtom:HeadersFootersAtom;
	
	/**
	 * userDateAtom (variable): An optional UserDateAtom record that specifies the custom date to be used in a HeadersFootersAtom record.
	 */
	public var userDateAtom:UserDateAtom;
	
	/**
	 * headerAtom (variable): An optional HeaderAtom record that specifies the content of the header.
	 */
	public var headerAtom:HeaderAtom;
	
	/**
	 * footerAtom (variable): An optional FooterAtom record that specifies the content of the footer.
	 */
	public var footerAtom:FooterAtom; 
	 
		public function NotesHeadersFootersContainer() 
		{
			
		}
		
	}

}