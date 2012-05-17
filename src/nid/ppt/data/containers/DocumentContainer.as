package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.DocumentAtom;
	import nid.ppt.data.atoms.EndDocumentAtom;
	import nid.ppt.data.atoms.PrintOptionsAtom;
	import nid.ppt.data.atoms.SlideShowDocInfoAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DocumentContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		public var rh:RecordHeader;
		
		/**
		 * documentAtom (48 bytes): A DocumentAtom record that specifies size information for presentation slides and notes slides.
		 */
		 
		public var documentAtom:DocumentAtom;
		 
		 /**
		  * exObjList (variable): An optional ExObjListContainer record that specifies the list of external objects in the document.
		  */
		 
		 public var exObjList:ExObjListContainer; 
		 
		 /**
		  * documentTextInfo (variable): A DocumentTextInfoContainer record that specifies the default text styles for the document.
		  */
		 
		 public var documentTextInfo
		 
		 /**
		  * soundCollection (variable): An optional SoundCollectionContainer record that specifies the list of sounds in the file.
		  */
		 
		 public var soundCollection:SoundCollectionContainer;
		 
		 /**
		  * drawingGroup (variable): A DrawingGroupContainer record that specifies drawing information for the document.
		  */
		 
		 public var drawingGroup:DrawingGroupContainer;
		 
		 /**
		  * masterList (variable): A MasterListWithTextContainer record that specifies the list of main master slides and title master slides.
		  */
		 
		 public var masterList:MasterListWithTextContainer;
		 
		 /**docInfoList (variable): An optional DocInfoListContainer record that specifies additional document information.
		  * 
		  */
		 
		 public var docInfoList:DocInfoListContainer;
		 
		 /**
		  * slideHF (variable): An optional SlideHeadersFootersContainer record that specifies the default header and footer information for presentation slides.
		  */
		 
		 public var slideHF:SlideHeadersFootersContainer;
		  
		/**
		 * notesHF (variable): An optional NotesHeadersFootersContainer record that specifies the default header and footer information for notes slides.
           slideList (variable): An optional SlideListWithTextContainer
		 */ 
		 
		 public var notesHF:NotesHeadersFootersContainer;
		 
		 /**
		  * slideList (variable): An optional SlideListWithTextContainer record that specifies the list of presentation slides.
		  */
		   
		 public var slideList:SlideListWithTextContainer;
		 
		 /**
		  *notesList (variable): An optional NotesListWithTextContainer record that specifies the list of notes slides.
		  */
		 
		 public var notesList:NotesListWithTextContainer;
		 
		 /**
		  * slideShowDocInfoAtom (88 bytes): An optional SlideShowDocInfoAtom record that specifies slide show information for the document.
		  */
		 
		  public var slideShowDocInfoAtom:SlideShowDocInfoAtom;
		  
		  /**
		   * namedShows (variable): An optional NamedShowsContainer record that specifies named shows in the document.
		   */
		 
		  public var namedShows:NamedShowsContainer;
		  
		  /**
		   * summary (variable): An optional SummaryContainer record that specifies bookmarks for the document.
		   */
		   
		  public var summary:SummaryContainer;
		  
		 /**
		  * docRoutingSlipAtom (variable): An optional DocRoutingSlipAtom record that specifies document routing information.
		  */
		 
		 public var docRoutingSlipAtom
		 
		 /**
		  * printOptionsAtom (13 bytes): An optional PrintOptionsAtom record that specifies default print options.
		  */
		 
		 public var printOptionsAtom:PrintOptionsAtom;
		 
		 /**
		  * rtCustomTableStylesAtom1 (variable): An optional RoundTripCustomTableStyles12Atom record that specifies round-trip information for custom table styles.
		  */
		 
		 public var rtCustomTableStylesAtom1
		 
		 /**
		  * endDocumentAtom (8 bytes): An EndDocumentAtom record that specifies the end of the information for the document.
		  */
		 public var endDocumentAtom:EndDocumentAtom;
		 
		 /**
		  * rtCustomTableStylesAtom2 (variable): An optional RoundTripCustomTableStyles12Atom record that specifies round-trip information for custom table styles. It MUST NOT exist if rtCustomTableStylesAtom1 exists
		  */
		 
		  public var rtCustomTableStylesAtom2 
		 
		 
		 
		public function DocumentContainer() 
		{
			
		}
		
	}

}