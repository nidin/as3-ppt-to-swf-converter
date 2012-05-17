package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class TextDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_TextDiff.
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * A - reserved1 (2 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved1:int;
		   /**
		    *B - wordList (1 bit): A bit that specifies whether the changes made by the reviewer to the corresponding text are not displayed. 
		    */
		   public var reserved2 (29 bits):int;
		   /**
		    *reserved2 (29 bits):
		    */
		   public var reserved2:int;
		   /**
		    * 
		    */
		 public function TextDiffContainer() 
		{
			
		}
		
	}

}