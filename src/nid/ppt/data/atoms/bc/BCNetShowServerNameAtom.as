package nid.ppt.data.atoms.bc 
{
	import nid.ppt.data.headers.RecordHeader;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class BCNetShowServerNameAtom 
	{
		/**
		 * rh (8 bytes): A RecordHeader structure that specifies the header for this record. Sub-fields are further specified in the following table.
		 */
		public var rh:RecordHeader;
		
	/**
	 * netShowServerName (variable): A MachineName that specifies the name of the NetShow server for the corresponding presentation broadcast. The length, in bytes, of the field is specified by rh.recLen.
	 */
	public var netShowServerName
	
		public function BCNetShowServerNameAtom() 
		{
			
		}
		
	}

}