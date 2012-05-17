package nid.ppt.data.atoms 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class HeaderFooterDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           The value 0x00 specifies display information for the changes made in the corresponding reviewer document to the NotesHeadersFootersContainer record.
           The value 0x01 specifies display information for the changes made in the corresponding reviewer document to the SlideHeadersFootersContainer record or to the PerSlideHeadersFootersContainer record in the corresponding slide.
		   Field Meaning
           rhs.gmiTag
           MUST be Diff_HeaderFooterDiff.
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * reserved (32 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved:int; 
		   
		public function HeaderFooterDiffContainer() 
		{
			
		}
		
	}

}