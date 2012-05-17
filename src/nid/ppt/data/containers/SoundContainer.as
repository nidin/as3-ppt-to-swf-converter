package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.SoundBuiltinIdAtom;
	import nid.ppt.data.atoms.SoundExtensionAtom;
	import nid.ppt.data.atoms.SoundIdAtom;
	import nid.ppt.data.atoms.SoundNameAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class SoundContainer 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
		/**
		 * soundNameAtom (variable): A SoundNameAtom record that specifies the name of the sound.
		 */
		public var soundNameAtom:SoundNameAtom;
		/**
		 * soundExtensionAtom (16 bytes): An optional SoundExtensionAtom record that specifies the format of the audio data.
		 */
		public var soundExtensionAtom:SoundExtensionAtom;
		/**
		 * soundIdAtom (variable): A SoundIdAtom record that specifies the sound identifier for the sound.
		 */
		public var soundIdAtom:SoundIdAtom;
		/**
		 * builtinIdAtom (variable): An optional SoundBuiltinIdAtom record that specifies an identifier that describes the sound.
		 */
		public var builtinIdAtom:SoundBuiltinIdAtom;
		/**
		 * soundDataBlob (variable): A SoundDataBlob record that specifies the audio data for the sound.
		 */
	s
		public function SoundContainer() 
		{
			
		}
		
	}

}