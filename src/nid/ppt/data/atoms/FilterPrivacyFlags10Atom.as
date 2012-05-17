package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class FilterPrivacyFlags10Atom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * A - fRemovePII (1 bit): A bit that specifies whether personally identifiable information is removed when saving the document.
		 */
		 
		public var fRemovePII:int;
		
		/**
		 * reserved (31 bits): MUST be zero and MUST be ignored
		 */
		 
		public var reserved:int;
		 
		public function FilterPrivacyFlags10Atom() 
		{
			
		}
		
	}

}