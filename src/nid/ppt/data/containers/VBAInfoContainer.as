package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.VBAInfoAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class VBAInfoContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh:RecordHeader;
		
		/**
		 * vbaInfoAtom (20 bytes): A VBAInfoAtom record that specifies VBA information for this document.
		 */
		
		public var vbaInfoAtom:VBAInfoAtom;
		
		
		
		public function VBAInfoContainer() 
		{
			
		}
		
	}

}