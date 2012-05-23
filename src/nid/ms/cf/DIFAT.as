package nid.ms.cf 
{
	import nid.utils.BinaryData;
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class DIFAT 
	{
		public var sectors:Vector.<Sector>;
		
		public function DIFAT(bytes:BinaryData) 
		{
			sectors = new Vector.<Sector>();
			
			for (var i:int = 0; i < 109; i++)
			{
				sectors.push(new Sector(bytes));
			}
		}
		public function toString():String
		{
			var s:String = '';
			for (var i:int = 0; i < 109; i++)
			{
				s += '\t' + sectors[i].toString() + '\n';
			}
			return '[Sectors]length:' + sectors.length;
		}
	}

}