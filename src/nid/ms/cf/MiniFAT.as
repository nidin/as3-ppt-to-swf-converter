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
		
		public function MiniFAT(bytes:BinaryData, sector_num:uint, sectorSize:uint) 
		{
			bytes.position = (sector_num + 1) * sectorSize;
			
			sectors = new Vector.<Sector>();
			
			for (var i:int = 0; i < 128; i++)
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