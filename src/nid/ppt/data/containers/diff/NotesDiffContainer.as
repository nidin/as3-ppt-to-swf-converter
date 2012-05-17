package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class NotesDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table: Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_NotesDiff.
		 */
		   public var rhs:DiffRecordHeaders
		   
			   /**
			    * A - reserved1 (2 bits): MUST be zero and MUST be ignored.
			    */
			   public var reserved1:int;
			   /**
			    * B - wordList (1 bit): A bit that specifies whether the change made by the reviewer to the corresponding notes text is not displayed. It MUST be FALSE if the corresponding notes text is contained within the corresponding notes master slide.
			    */
			   public var wordList:int;
			   /**
			    * reserved2 (29 bits): MUST be zero and MUST be ignored.
			    */
			   public var reserved2:int;
			   
		   
		      
		 public function NotesDiffContainer() 
		{
			
		}
		
	}

}