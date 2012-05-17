package nid.ppt.data.containers.diff 
{
	import nid.ppt.data.atoms.DiffRecordHeaders;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class TableListDiffContainer 
	{
		/**
		 * rhs (24 bytes): A DiffRecordHeaders structure that specifies the header for the container record. Sub-fields are further specified in the following table. Field Meaning
           rhs.fIndex
           MUST be 0x00.
           rhs.gmiTag
           MUST be Diff_TableListDiff.
		 */
		   public var rhs:DiffRecordHeaders;
		   /**
		    * reserved (32 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved:int;
		   /**
		    * rgTableDiff (variable): An array of TableDiffContainer records that specifies how to display changes made by the reviewer to the table objects in the corresponding slide or corresponding main master slide. The size, in bytes, of the array is specified by the following formula:
		    */
		   public var rgTableDiff
		   
		public function TableListDiffContainer() 
		{
			
		}
		
	}

}