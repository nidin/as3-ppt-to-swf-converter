package nid.ppt.data.atoms 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SoundBuiltinIdAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * soundBuiltinId (variable): A UTF-16 Unicode [RFC2781] string representation of the base-10 form of an integer value that specifies a description of a sound. It MUST be a value from the following table.
		 */
		public var soundBuiltinId
		
		
		public function SoundBuiltinIdAtom() 
		{
			
		}
		
	}

}