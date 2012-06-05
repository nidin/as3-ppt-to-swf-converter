package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class MiniFAT 
	{
		public var sectors:Vector.<Sector>;
		
		public function MiniFAT(bytes:BinaryData, header:CFHeader) 
		{
			bytes.position = (header.firstMiniFATSectorLocation + 1) * header.sectorSize;
			
			trace('MiniFAT offset:' + bytes.position);
			
			sectors = new Vector.<Sector>();
			
			for (var i:int = 0; i < header.numberOfMiniFATSectors * 128; i++)
			{
				sectors.push(new Sector(bytes));
			}
		}
		public function toString():String
		{
			var s:String = '';
			for (var i:int = 0; i < sectors.length; i++)
			{
				s += '\t'+sectors[i].toString() + '\n';
			}
			return '[Sectors]length:' + sectors.length;
		}
		
	}

}