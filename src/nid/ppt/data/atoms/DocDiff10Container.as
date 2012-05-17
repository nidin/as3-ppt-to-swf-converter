package nid.ppt.data.atoms 
{
	import nid.ppt.data.containers.diff.MasterListDiffContainer;
	import nid.ppt.data.containers.diff.NamedShowListDiffContainer;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DocDiff10Container 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_DocDiff.
		 */
		   public var rhs
		   /**
		    * A - reserved1 (2 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved1:int;
		   /**
		    * B - slideSize (1 bit): A bit that specifies whether the change made by the reviewer in the corresponding reviewer document to the slideSize field of the DocumentAtom record is not displayed.
		    */
		   public var slideSize:int;
		   /**
		    * C - omitTitlePlace (1 bit): A bit that specifies whether the change made by the reviewer in the corresponding reviewer document to the fOmitTitlePlace field of the DocumentAtom record is not displayed.
		    */
		   public var omitTitlePlace:int;
		   /**
		    * D - namedShowList (1 bit): A bit that specifies whether the changes made by the reviewer in the corresponding reviewer document to any NamedShowContainer record in the NamedShowsContainer record are not displayed.
		    */
		   public var namedShowList:int;
		   /**
		    * E - slideHeaderFooter (1 bit): A bit that specifies whether the changes made by the reviewer in the corresponding reviewer document to the SlideHeadersFootersContainer record are not displayed.
		    */
		   public var slideHeaderFooter:int;
		   /**
		    * F - notesHeaderFooter (1 bit): A bit that specifies whether the changes made by the reviewer in the corresponding reviewer document to the NotesHeadersFootersContainer record are not displayed.
		    */
		   public var notesHeaderFooter:int;
		   /**
		    * reserved2 (25 bits): MUST be zero and MUST be ignored
		    */
		   public var reserved2:int;
		   /**
		    * slideHFDiff (28 bytes): An optional HeaderFooterDiffContainer record that specifies how to display the changes made by the reviewer in the corresponding reviewer document to the SlideHeadersFootersContainer record.
		    */
		   public var slideHFDiff:HeaderFooterDiffContainer;
		   /**
		    * notesHFDiff (28 bytes): An optional HeaderFooterDiffContainer record that specifies how to display the changes made by the reviewer in the corresponding reviewer document to the NotesHeadersFootersContainer record.
		    */
		   public var notesHFDiff:HeaderFooterDiffContainer;
		   /**
		    * namedShowListDiff (variable): An optional NamedShowListDiffContainer record that specifies how to display the changes made by the reviewer in the corresponding reviewer document to each NamedShowContainer record in the NamedShowsContainer record.
		    */
		   public var namedShowListDiff:NamedShowListDiffContainer;
		   /**
		    * masterListDiff (variable): An optional MasterListDiffContainer record that specifies how to display the changes made by the reviewer in the corresponding reviewer document to each MasterPersistAtom record in the MasterListWithTextContainer record.
		    */
		   public var masterListDiff:MasterListDiffContainer;
		   /**
		    * slideListDiff (variable): An optional SlideListDiffContainer record that contains records that specify how to display the changes made by the reviewer in the corresponding reviewer document to each SlidePersistAtom record in the SlideListWithTextContainer record.
		    */
		   public var slideListDiff
		   h
		public function DocDiff10Container() 
		{
			
		}
		
	}

}