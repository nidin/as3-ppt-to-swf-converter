package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class VBAInfoAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * persistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of a VbaProjectStg record
		 */
		
		public var persistIdRef 
		 
		/**
		 * fHasMacros (4 bytes): An unsigned integer that specifies whether the VBA project storage contains data. It MUST be a value from the following table.
		 */
		
		public var fHasMacros:uint;
		
		/**
		 * version (4 bytes): An unsigned integer that specifies the VBA runtime version that generated the VBA project storage. It MUST be 0x00000002.
		 */
		 
		public var version:uint;
		 
		 
		 
		public function VBAInfoAtom() 
		{
			
		}
		
	}

}