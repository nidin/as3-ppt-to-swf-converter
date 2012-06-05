package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class FAT 
	{
		public var sectors:Vector.<Sector>;
		
		public function FAT(bytes:BinaryData, header:CFHeader) 
		{
			bytes.position = (header.firstFatSectorLocation + 1) * header.sectorSize;
			
			trace('FAT offset:' + bytes.position);
			
			sectors = new Vector.<Sector>();
			
			for (var i:int = 0; i < header.numberOfFATSectors * 128; i++)
			{
				sectors.push(new Sector(bytes));
			}
		}
		public function toString():String
		{
			var s:String = '';
			for (var i:int = 0; i < sectors.length; i++)
			{
				s += '\t' + sectors[i].toString() + '\n';
			}
			return '[Sectors]length:' + sectors.length;
		}
		
	}

}