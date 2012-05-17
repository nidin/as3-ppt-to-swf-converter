package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class MainMasterDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_MainMasterDiff.
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * A - scheme (1 bit): A bit that specifies whether the change made by the reviewer to the slideFlags.fMasterScheme field of the SlideAtom record contained within the corresponding main master slide is not displayed.
		   */
		   public var scheme:int;
		   /**
		    * B - background (1 bit): A bit that specifies whether the change made by the reviewer to the slideFlags.fMasterBackground field of the SlideAtom record contained within the corresponding main master slide is not displayed.
		    */
		   public var background:int;
		   /**
		    * reserved1 (10 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved1:int;
		   /**
		    * C - timeNode (1 bit): A bit that specifies whether the change made by the reviewer to the ExtTimeNodeContainer record contained within the corresponding main master slide is not displayed.
		    */
		   public var timeNode:int;
		   /**
		    * D - addMainMaster (1 bit): A bit that specifies whether the addition of the corresponding main master slide made by the reviewer in the corresponding reviewer document is not displayed.
		    */
		   public var addMainMaster:int;
		   /**
		    * E - deleteMainMaster (1 bit): A bit that specifies whether the deletion of the corresponding main master slide made by the reviewer in the corresponding reviewer document is not displayed.
		    */
		   public var deleteMainMaster:int;
		   /**
		    * F - locked (1 bit): A bit that specifies whether the change made by the reviewer to the slideFlagsAtom.fPreserveMaster field of the PP10SlideBinaryTagExtension record contained within the corresponding main master slide is not displayed.
		    */
		   public var locked:int;
		   /**
		    * reserved2 (16 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved2:int;
		   /**
		    * shapeListDiff (variable): An optional ShapeListDiffContainer record that specifies how to display the changes made by the reviewer to the shapes contained within the corresponding main master slide.
		    */
		   public var shapeListDiff:ShapeListDiffContainer;
		   /**
		    * tableListDiff (variable): An optional TableListDiffContainer record that specifies how to display the changes made by the reviewer to the table objects contained within the corresponding main master slide.
		    */
		   public var tableListDiff:TableListDiffContainer;
		   /**
		    * notesDiff (28 bytes): An optional NotesDiffContainer record that specifies how to display the changes made by the reviewer in the corresponding reviewer document to the notes master slide
		    */
		   public var notesDiff:NotesDiffContainer;
		   /**
		    * 
		    */
		public function MainMasterDiffContainer() 
		{
			
		}
		
	}

}