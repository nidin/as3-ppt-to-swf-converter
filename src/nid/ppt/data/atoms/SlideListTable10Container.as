package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SlideListTable10Container 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0xF.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_SlideListTable10.
		 */
		   public var rh:RecordHeader;
		   /**
		    * slideListTableSizeAtom (12 bytes): A SlideListTableSize10Atom record that specifies the number of SlideListEntry10Atom records in the rgSlideListEntryAtom field.
		    */
		   public var slideListTableSizeAtom
		   /**
		    * rgSlideListEntryAtom (variable): An array of SlideListEntry10Atom records that specifies the creation time of the presentation slides in the document. The count of items in the array is specified by the slideListTableSizeAtom.count field.
		    */
		   public var rgSlideListEntryAtom
		   
		public function SlideListTable10Container() 
		{
			
		}
		
	}

}