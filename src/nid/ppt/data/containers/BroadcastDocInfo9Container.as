package nid.ppt.data.containers 
{
	import nid.ppt.data.atoms.bc.BCArchiveDirAtom;
	import nid.ppt.data.atoms.bc.BCAsdFileNameAtom;
	import nid.ppt.data.atoms.bc.BCBroadcastDateTimeAtom;
	import nid.ppt.data.atoms.bc.BCChatUrlAtom;
	import nid.ppt.data.atoms.bc.BCContactAtom;
	import nid.ppt.data.atoms.bc.BCDescriptionAtom;
	import nid.ppt.data.atoms.bc.BCEmailAddressAtom;
	import nid.ppt.data.atoms.bc.BCEmailNameAtom;
	import nid.ppt.data.atoms.bc.BCEntryIDAtom;
	import nid.ppt.data.atoms.bc.BCNetShowFilesBaseDirAtom;
	import nid.ppt.data.atoms.bc.BCNetShowFilesDirAtom;
	import nid.ppt.data.atoms.bc.BCNetShowServerNameAtom;
	import nid.ppt.data.atoms.bc.BCPptFilesBaseDirAtom;
	import nid.ppt.data.atoms.bc.BCPptFilesDirAtom;
	import nid.ppt.data.atoms.bc.BCPresentationNameAtom;
	import nid.ppt.data.atoms.bc.BCRexServerNameAtom;
	import nid.ppt.data.atoms.bc.BCTitleAtom;
	import nid.ppt.data.atoms.bc.BCUserNameAtom;
	import nid.ppt.data.atoms.BroadcastDocInfoAtom;
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BroadcastDocInfo9Container 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		public var rh:RecordHeader;
		/**
		 * bcTitleAtom (variable): An optional BCTitleAtom record that specifies the title.
		 */
		public var bcTitleAtom:BCTitleAtom;
		/**
		 * bcDescrAtom (variable): An optional BCDescriptionAtom record that specifies the description.
		 */
		public var  bcDescrAtom:BCDescriptionAtom;
		/**
		 * bcSpeakerAtom (variable): An optional BCSpeakerAtom record that specifies the name of the speaker.
		 */
		public var bcSpeakerAtom:BCContactAtom;
		/**
		 * bcRexServerNameAtom (variable): An optional BCRexServerNameAtom record that specifies the name of the remote computer to which a camera or microphone is connected to record the
		 */
		public var bcRexServerNameAtom:BCRexServerNameAtom;
		
		/**
		 * bcEmailAddressAtom (variable): An optional BCEmailAddressAtom record that specifies the e-mail address for audience feedback.
		 */
		public var bcEmailAddressAtom:BCEmailAddressAtom;bro
		/**
		 * bcEmailNameAtom (variable): An optional BCEmailNameAtom record that specifies the e-mail name for audience feedback. It MUST exist if bcDocInfoAtom.fCanEmail is TRUE.
		 */
		public var bcEmailNameAtom:BCEmailNameAtom;
		/**
		 * bcChatUrlAtom (variable): An optional BCChatUrlAtom record that specifies the URL of a chat server.
		 */
		public var bcChatUrlAtom:BCChatUrlAtom;
		/**
		 * bcArchiveDirAtom (variable): An optional BCArchiveDirAtom record that specifies the directory location to archive this presentation broadcast.
		 */
		public var bcArchiveDirAtom:BCArchiveDirAtom;
		/**
		 * bcNSFilesBaseDirAtom (variable): An optional BCNetShowFilesBaseDirAtom record that specifies the UNC base directory to store presentation broadcast files for NetShow.
		 */
		public var bcNSFilesBaseDirAtom:BCNetShowFilesBaseDirAtom;
		/**
		 * bcNSFilesDirAtom (variable): An optional BCNetShowFilesDirAtom record that specifies the UNC directory location to store presentation broadcast files for NetShow. It MUST exist if bcDocInfoAtom.fUseNetShow is TRUE.
		 */
		public var bcNSFilesDirAtom:BCNetShowFilesDirAtom;
		/**
		 * bcNSServerNameAtom (variable): An optional BCNetShowServerNameAtom record that specifies the name of the NetShow server. It MUST exist if bcDocInfoAtom.fUseNetShow is TRUE.
		 */
		public var bcNSServerNameAtom:BCNetShowServerNameAtom;
		/**
		 * bcPptFilesBaseDirAtom (variable): A BCPptFilesBaseDirAtom record that specifies the path to the UNC base directory to store presentation broadcast files.
          
		 */
		public var bcPptFilesBaseDirAtom:BCPptFilesBaseDirAtom;
		/**
		 * bcPptFilesDirAtom (variable): A BCPptFilesDirAtom record that specifies the path to the UNC directory to store presentation broadcast files.
		 */
		public var  bcPptFilesDirAtom:BCPptFilesDirAtom;
		/**
		 * bcPptFilesBaseUrlAtom (variable): A BCPptFilesBaseUrlAtom record that specifies the UNC or HTTP location of the directory specified in bcPptFilesDirAtom.
		 */
		 public var bcPptFilesBaseUrlAtom:BCPptFilesBaseUrlAtom;
		 /**
		  * bcUserNameAtom (variable): A BCUserNameAtom record that specifies the name of the user who scheduled the presentation broadcast.
		  */
		 public var bcUserNameAtom:BCUserNameAtom;
		 /**
		  * bcBroadcastDateTimeAtom (variable): A BCBroadcastDateTimeAtom record that specifies the directory name to create under the base directory specified in bcPptFilesBaseDirAtom.
		  */
		 public var bcBroadcastDateTimeAtom:BCBroadcastDateTimeAtom;
		 /**
		  * bcPresentationNameAtom (variable): A BCPresentationNameAtom record that specifies the name of the presentation.
		  */
		 public var  bcPresentationNameAtom:BCPresentationNameAtom;
		 /**
		  * bcAsdFileNameAtom (variable): A BCAsdFileNameAtom record that specifies the location of an ASD file. The ASD file is the description file for an Advanced Systems Format (ASF) file, described in [ASF], used to stream audio and video content.
		  */
		 public var bcAsdFileNameAtom:BCAsdFileNameAtom;
		 /**
		  *bcEntryIdAtom (variable): An optional BCEntryIDAtom record that specifies the identifier for a calendar item to associate with this presentation broadcast. 
		  */
		 public var bcEntryIdAtom:BCEntryIDAtom;
		 /**
		  * bcDocInfoAtom (42 bytes): A BroadcastDocInfoAtom record that specifies properties of a presentation broadcast.
		  */
		 public var bcDocInfoAtom:BroadcastDocInfoAtom;
		 
		public function BroadcastDocInfo9Container() 
		{
			
		}
		
	}

}