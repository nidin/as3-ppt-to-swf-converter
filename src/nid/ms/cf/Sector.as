package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class Sector 
	{
		public var value:uint;
		
		public function Sector(bytes:BinaryData) 
		{
			value = bytes.readUI32();
		}
		public function toString():String
		{
			return '[SectorNumber]:' + value;
		}
	}

}