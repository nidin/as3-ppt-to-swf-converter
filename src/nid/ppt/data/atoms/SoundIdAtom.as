package nid.ppt.data.atoms 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SoundIdAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * soundId (variable): A UTF-16 Unicode [RFC2781] string representation of the base-10 form of an integer value that specifies the sound identifier for a sound. The integer value MUST be greater than zero, less than or equal to the seed specified by the SoundCollectionAtom record and unique within the SoundCollectionContainer record. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var soundId
		
		public function SoundIdAtom() 
		{
			
		}
		
	}

}