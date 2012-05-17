package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BroadcastDocInfoAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x000.
           rh.recType
           MUST be RT_BroadcastDocInfo9Atom.
           rh.recLen
           MUST be 0x00000022.
		 */
		   public var rh:RecordHeader;
		   
		   /**
		    * A - fSendAudio (1 bit): A bit that specifies whether to include an audio stream.
		    */
		   public var fSendAudio:int;
		   /**
		    * B - fSendVideo (1 bit): A bit that specifies whether to include a video stream.
		    */
		   public var fSendVideo:int;
		   /**
		    * C - fCameraRemote (1 bit): A bit that specifies whether the camera is located on a computer other than the computer giving the corresponding presentation broadcast.
		    */
		   public var fCameraRemote:int;
		   /**
		    * D - fUseNetShow (1 bit): A bit that specifies whether to use NetShow server technology described in [MSFT-UMWNSNS].
		    */
		   public var fUseNetShow:int;
		   /**
		    * E - fUseOtherServer (1 bit): A bit that specifies whether to use a third-party server for the corresponding presentation broadcast.
		    */
		   public var fUseOtherServer:int;
		   /**
		    * F - fCanEmail (1 bit): A bit that specifies whether an e-mail address is provided to the audience.
		    */
		   public var fCanEmail:int;
		   /**
		    * G - fCanChat (1 bit): A bit that specifies whether a chat URL is provided to the audience.
		    */
		   public var fCanChat:int;
		   /**
		    * H - fDoArchive (1 bit): A bit that specifies whether the corresponding presentation broadcast is archived.
		    */
		   public var fDoArchive:int;
		   /**
		    * I - fSpeakerNotes (1 bit): A bit that specifies whether the audience can see the speaker notes.
		    */
		   public var fSpeakerNotes:int;
		   /**
		    * J - fQuarterScreen (1 bit): A bit that specifies whether the slide show is displayed to the presenter in a resizable window.
		    */
		   public var fQuarterScreen:int;
		   /**
		    * K - fShowTools (1 bit): A bit that specifies whether to show speaker notes to the presenter.
		    */
		   public var fShowTools:int;
		   /**
		    * L - fRecordOnly (1 bit): A bit that specifies whether the corresponding presentation broadcast is for recording only.
		    */
		   public var fRecordOnly:int;
		   /**
		    * M - reserved (4 bits): MUST be zero and MUST be ignored.
		    */
		   public var reserved:int;
		   /**
		    * startTime (16 bytes): A DateTimeStruct structure that specifies the time the corresponding presentation broadcast is scheduled to begin.
		    */
		   public var startTime
		   /**
		    * endTime (16 bytes): A DateTimeStruct structure that specifies the time the corresponding presentation broadcast is scheduled to end.
		    */
		public function BroadcastDocInfoAtom() 
		{
			
		}
		
	}

}