package nid.ppt.data.atoms 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class HTMLPublishInfo9Container 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
         rh.recVer
         MUST be 0xF.
         rh.recInstance
         MUST be 0x000.
         rh.recType
         MUST be RT_HTMLPublishInfo9.
		 */
		 
		 public var rh:RecordHeader;
		 /**
		  * fileNameAtom (variable): A FileNameAtom record that specifies the file name
		  */
		 public var fileNameAtom:FileNameAtom;
		 /**
		  * namedShowAtom (variable): An optional NamedShowAtom record that specifies the named show being published. It MUST exist if the htmlPublishInfoAtom.fUseNamedShowX field is set to TRUE.
		  */
		 public var namedShowAtom:NamedShowAtom;
		 /**
		  * htmlPublishInfoAtom (20 bytes): A HTMLPublishInfoAtom record that specifies the settings for publishing the document.
		  */
		 public var htmlPublishInfoAtom:HTMLPublishInfoAtom;
		 
		public function HTMLPublishInfo9Container() 
		{
			
		}
		
	}

}