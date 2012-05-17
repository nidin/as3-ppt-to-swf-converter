package nid.ppt.data.containers.diff 
{
	import flash.display.GradientType;
	import nid.ppt.data.atoms.DiffRecordHeaders;
	import nid.ppt.data.atoms.HeaderFooterDiffContainer;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SlideDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_SlideDiff.
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * A - scheme (1 bit): A bit that specifies whether the change made by the reviewer to the slideFlags.fMasterScheme field of the SlideAtom record contained within the corresponding slide is not displayed.
		    */
		   public var scheme:int;
		   /**
		    *B - background (1 bit): A bit that specifies whether the change made by the reviewer to the slideFlags.fMasterBackground field of the SlideAtom record contained within the corresponding slide is not displayed.
		    */
		   public var background :int;
		   /**
		    * C - reserved1 (2 bits): MUST be zero and MUST be ignored
		    */
		   public var reserved1:int;
		   /**
		    * D - addSlide (1 bit): A bit that specifies whether the addition of the corresponding slide made by the reviewer in the corresponding reviewer document is not displayed
		    */
		   public var addSlide :int;
		   /**
		    * E - deleteSlide (1 bit): A bit that specifies whether the deletion of the corresponding slide made by the reviewer in the corresponding reviewer document is not displayed.
		    */
		   public var deleteSlide:int;
		   /**
		    * F - layout (1 bit): A bit that specifies whether the change made by the reviewer to the geom field of the SlideAtom record contained within the corresponding slide is not displayed.
		    */
		   public var layout:int;
		   /**
		    * G - slideShow (1 bit): A bit that specifies whether the changes made by the reviewer to the SlideShowSlideInfoAtom record contained within the corresponding slide are not displayed.
		    */
		   public var slideShow:int;
		   /**
		    * H - headerFooter (1 bit): A bit that specifies whether the changes made by the reviewer in the corresponding reviewer document to the PerSlideHeadersFootersContainer record in the corresponding slide are not displayed.
		    */
		   public var  headerFooter:int;
		   /**
		    * I - reserved2 (1 bit): MUST be zero and MUST be ignored.
		    */
		   public var reserved2:int;
		   /**
		    * J - master (1 bit): A bit that specifies whether the change made by the reviewer to the masterIdRef field of the SlideAtom record contained within the corresponding slide is not displayed.
		    */
		   public var master:int;
		   /**
		    * K - position (1 bit): A bit that specifies whether the change made by the reviewer to the position of the corresponding slide in the SlideListWithTextContainer record in the corresponding reviewer document is not displayed.
		    */
		   public var position:int;
		   /**
		    * L - timeNode (1 bit): A bit that specifies whether the change made by the reviewer to the ExtTimeNodeContainer record contained within the corresponding slide is not displayed.
		    */
		   public var timeNode:int;
		   /**
		    * reserved3 (19 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved3:int;
		   
		  /**
		   * shapeListDiff (variable): An optional ShapeListDiffContainer record that specifies how to display the changes made by the reviewer to the shapes contained within the corresponding slide.
		   */
		  public var shapeListDiff:ShapeListDiffContainer;
		  /**
		   * tableListDiff (variable): An optional TableListDiffContainer record that specifies how to display the changes made by the reviewer to the table objects contained within the corresponding slide.
		   */
		  public var tableListDiff:TableListDiffContainer;
		  /**
		   * slideShowDiff (28 bytes): An optional SlideShowDiffContainer record that specifies how to display the changes made by the reviewer to the SlideShowSlideInfoAtom record contained within the corresponding slide.
             
		   */
			 public var slideShowDiff:SlideShowDiffContainer;
			 /**
			  * hfDiff (28 bytes): An optional HeaderFooterDiffContainer record that specifies how to display the changes made by the reviewer to the PerSlideHeadersFootersContainer record contained within the corresponding slide.
			  */
			 public var hfDiff:HeaderFooterDiffContainer;
			 /**
			  * notesDiff (28 bytes): An optional NotesDiffContainer record that specifies how to display the changes made by the reviewer to the notes slide for the corresponding slide.
			  */
			 
		public function SlideDiffContainer() 
		{
			
		}
		
	}

}