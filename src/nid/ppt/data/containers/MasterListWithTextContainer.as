package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.MasterPersistAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class MasterListWithTextContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * rgMasterPersistAtom (variable): An array of MasterPersistAtom records that specifies references to the main master slides and title master slides. The length, in bytes, of the array is specified by rh.recLen
		 */
		 
		public var rgMasterPersistAtom:MasterPersistAtom;
		m
		public function MasterListWithTextContainer() 
		{
			
		}
		
	}

}