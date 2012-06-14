package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	import nid.ppt.factory.RecordType;
	import nid.ppt.PPTData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class CurrentUserAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. 
		 * Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		/**
		 * size (4 bytes): An unsigned integer that specifies the length, in bytes, of the 
		 * fixed-length portion of the record, which begins after the rh field and ends 
		 * before the ansiUserName field. It MUST be 0x00000014.
		 */
		public var size:uint;
		/**
		 * An unsigned integer that specifies a token used to identify whether the file is encrypted. 
		 * It MUST be a value from the following table.
		 */
		public var headerToken:uint;
		/**
		 * An unsigned integer that specifies an offset, in bytes, from the beginning of 
		 * the PowerPoint Document Stream to the UserEditAtom record for the most recent user edit.
		 */
		public var offsetToCurrentEdit:uint;
		/**
		 * An unsigned integer that specifies the length, in bytes, of the ansiUserName field. 
		 * It MUST be less than or equal to 255.
		 */
		public var lenUserName:uint;
		/**
		 * An unsigned integer that specifies the document file version of the file. It MUST be 0x03F4.
		 */
		public var docFileVersion:uint;
		/**
		 * An unsigned integer that specifies the major version of the storage format. It MUST be 0x03.
		 */
		public var majorVersion:uint;
		/**
		 * An unsigned integer that specifies the minor version of the storage format. It MUST be 0x00.
		 */
		public var minorVersion:uint;
		/**
		 * Undefined and MUST be ignored
		 */
		public var unused:uint
		/**
		 * A PrintableAnsiString that specifies the user name of the last user to modify the file. 
		 * The length, in bytes, of the field is specified by the lenUserName field.
		 */
		public var ansiUserName:String
		/**
		 * An unsigned integer that specifies the release version of the file format. 
		 * It MUST be a value from the following table.
		 */
		public var relVersion:uint;
		/**
		 * An optional PrintableUnicodeString that specifies the user name of the last user 
		 * to modify the file. The length, in bytes, of the field is specified by 2 * lenUserName. 
		 * This user name supersedes that specified by the ansiUserName field. It MAY<8> be omitted.
		 */
		public var unicodeUserName:String
		
		public function CurrentUserAtom(pptBytes:PPTData) 
		{
			rh = new RecordHeader();
			rh.recVer = 0x0;
			rh.recInstance = 0x000;
			rh.recType = RecordType.RT_CurrentUserAtom;
		}
		
	}

}