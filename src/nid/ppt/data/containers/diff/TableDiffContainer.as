package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class TableDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
         rhs.fIndex
         MUST be 0x00.
         rhs.gmiTag
         MUST be Diff_SlideShowDiff.
		 */
		 public var rhs:DiffRecordHeaders;
		 /**
		  * reserved (32 bits): MUST be zero and MUST be ignored.
		  */
		 public var reserved:int;
		 
		
		public function TableDiffContainer() 
		{
			
		}
		
	}

}