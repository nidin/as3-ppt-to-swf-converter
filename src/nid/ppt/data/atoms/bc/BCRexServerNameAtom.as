package nid.ppt.data.atoms.bc 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCRexServerNameAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		/**
		 * rexServerName (variable): A MachineName that specifies the name of the remote computer to which a camera or microphone is connected to record the video or audio of the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
		 */
		public var rexServerName
		
		 
		public function BCRexServerNameAtom() 
		{
			
		}
		
	}

}