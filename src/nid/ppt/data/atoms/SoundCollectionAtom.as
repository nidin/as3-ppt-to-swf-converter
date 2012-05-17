package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SoundCollectionAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * soundIdSeed (4 bytes): A signed integer that specifies the seed for creating a new sound identifier. It MUST be greater than 0x00000000 and greater than or equal to all sound identifiers specified by the SoundIdAtom records.
		 */
		public var soundIdSeed:int; 
		
		public function SoundCollectionAtom() 
		{
			
		}
		
	}

}