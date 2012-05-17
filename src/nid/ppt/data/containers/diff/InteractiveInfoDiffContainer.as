package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class InteractiveInfoDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table.
		 * Field Meaning
           rhs.fIndex
           The value 0x00 specifies display information for the changes to the MouseOverInteractiveInfoContainer record contained within the corresponding shape.
           The value 0x01 specifies display information for the changes to the MouseClickInteractiveInfoContainer record contained within the corresponding shape.
           rhs.gmiTag
           MUST be Diff_InteractiveInfoDiff.
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * reserved (32 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved:int;
		   
		public function InteractiveInfoDiffContainer() 
		{
			
		}
		
	}

}