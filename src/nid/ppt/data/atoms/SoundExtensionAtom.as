package nid.ppt.data.atoms 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SoundExtensionAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		/**
		 * soundExtension (8 bytes): A UTF-16 Unicode [RFC2781] string that specifies the format of the audio data for a sound. It SHOULD<13> be a value from the following table.
		 */
		public var soundExtension 
		
		public function SoundExtensionAtom() 
		{
			
		}
		
	}

}