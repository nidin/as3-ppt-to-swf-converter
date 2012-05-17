package nid.ppt.data.containers 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class CryptSession10Container 
	{
		
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table:
		 */
		
		public var rh
		
		/**
		 * data (variable): An EncryptionHeader record as specified in [MS-OFFCRYPTO] section 2.3.5.1. The length, in bytes, of the field is specified by rh.recLen.
		 */
		
		 
		public function CryptSession10Container() 
		{
			
		}
		
	}

}