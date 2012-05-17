package nid.ppt.data.atoms 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class UserEditAtom 
	{
		/**
		 * A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		
		public var rh
		
		/**
		 * lastSlideIdRef (4 bytes): A SlideIdRef that specifies the last slide viewed, if this is the last UserEditAtom record in the PowerPoint Document Stream. In all other cases the value of this field is undefined and MUST be ignored.
		 */
		public var lastSlideIdRef 
		
		 /**
		  * version (16 bits): An unsigned integer that specifies a build version of the executable that wrote the file. It SHOULD<9> be 0x0000 and MUST be ignored.
		  */
		 
		 public var version:uint;
		 
		 /**
		  * minorVersion (8 bits): An unsigned integer that specifies the minor version of the storage format. It MUST be 0x00.
		  */
		 public var minorVersion:uint;
		 
		 /**
		  * majorVersion (8 bits): An unsigned integer that specifies the major version of the storage format. It MUST be 0x03
		  */
		 
		 public var majorVersion:uint;
		 
		 /**
		  * offsetLastEdit (4 bytes): An unsigned integer that specifies an offset, in bytes, from the beginning of the PowerPoint Document Stream to a UserEditAtom record for the previous user edit. It MUST be less than the offset, in bytes, of this UserEditAtom record. The value 0x00000000 specifies that no previous user edit exists.
		  */
		 
		 public var offsetLastEdit:uint;
		 
		 /**
		  * offsetPersistDirectory (4 bytes): An unsigned integer that specifies an offset, in bytes, from the beginning of the PowerPoint Document Stream to the PersistDirectoryAtom record for this user edit. It MUST be greater than offsetLastEdit and less than the offset, in bytes, of this UserEditAtom record.
		  */
		 
		 public var offsetPersistDirectory:uint;
		 
		 /**
		  * docPersistIdRef (4 bytes): A PersistIdRef that specifies the value to look up in the persist object directory to find the offset of the DocumentContainer record. It MUST be 0x00000001.
		  */
		 public var docPersistIdRef 
		 
		 /**
		  * persistIdSeed (4 bytes): An unsigned integer that specifies a seed for creating a new persist object identifier. It MUST be greater than or equal to all persist object identifiers in the file as specified by the PersistDirectoryAtom records.
		  */
		 public var persistIdSeed:uint;
		 
		 /**
		  * lastView (2 bytes): A ViewTypeEnum enumeration that specifies the last view used to display the file.
		  */
		 
		 public var lastView
		 
		 /**
		  * unused (2 bytes): Undefined and MUST be ignored.
		  */
		 public var unused
		 
		 /**
		  * encryptSessionPersistIdRef (4 bytes): An optional PersistIdRef that specifies the value to look up in the persist object directory to find the offset of the CryptSession10Container record. It MAY<10> be omitted. It MUST exist if the document is an encrypted document.
		  */
		 
		 public var encryptSessionPersistIdRef 
		 
		 
		 
		 
		 
		 
		public function UserEditAtom() 
		{
			
		}
		
	}

}