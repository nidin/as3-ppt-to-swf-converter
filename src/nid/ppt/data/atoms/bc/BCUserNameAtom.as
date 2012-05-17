package nid.ppt.data.atoms.bc 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCUserNameAtom 
	{
	       /**
	        * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
rh.recVer
MUST be 0x0.
rh.recInstance
MUST be 0x010.
rh.recType
MUST be RT_CString.
rh.recLen
MUST be an even number. It MUST be less than 510.
	        */	
public var rh:RecordHeader;

/**
 * userName (variable): A FileOrDirNameFragment that specifies the name of the user who scheduled the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
 */

		public function BCUserNameAtom() 
		{
			
		}
		
	}

}