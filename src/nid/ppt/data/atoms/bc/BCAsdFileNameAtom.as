package nid.ppt.data.atoms.bc 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCAsdFileNameAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table. Field Meaning
           rh.recVer
           MUST be 0x0.
           rh.recInstance
           MUST be 0x013.
		   rh.recType
           UST be RT_CString.
           rh.recLen 
           MUST be an even number. It MUST be less than 520.
		 */
		   
		   public var rh:RecordHeader;
		   /**
		    * asdFileName (variable): A UncPath that specifies the location of an ASD file for the corresponding
		    */
		   public var asdFileName 
		 
		 public function BCAsdFileNameAtom() 
		{
			
		}
		
	}

}