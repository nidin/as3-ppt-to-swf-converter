package nid.ppt 
{
	import nid.ppt.data.headers.RecordHeader;
	import nid.utils.BinaryData;
	
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class PPTData extends BinaryData 
	{
		
		public function PPTData() 
		{
			
		}
		
		public function readHeader():RecordHeader
		{
			var recHeader:RecordHeader = new RecordHeader();
			recHeader.recVer = readBits(4);
			recHeader.recInstance = readBits(12);
			recHeader.recType = readUI16();
			recHeader.recLen = readUI32();
			return recHeader;
		}
		
	}

}