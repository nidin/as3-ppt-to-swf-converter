package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class EndDocumentAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. 
		 */
		
		public var rh:RecordHeader;		 
		 
		public function EndDocumentAtom() 
		{
			
		}
		
	}

}