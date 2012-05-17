package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.SoundCollectionAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SoundCollectionContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * soundCollectionAtom (12 bytes): A SoundCollectionAtom record that specifies the seed for creating new sound identifiers for sounds in this collection.
		 */
		public var soundCollectionAtom:SoundCollectionAtom;
		
		/**
		 * rgSoundContainer (variable): An array of SoundContainer records that specifies the embedded sounds. The length, in bytes, of the array is specified by the following formula:
		 */
		public var rgSoundContainer:SoundContainer;
		
		public function SoundCollectionContainer() 
		{
			
		}
		
	}

}