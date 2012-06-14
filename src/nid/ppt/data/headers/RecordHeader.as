package nid.ppt.data.headers 
{
	/**
	 * ...
	 * @author Nidin P Vinayakan
	 */
	public class RecordHeader 
	{
		public var recVer:uint
		public var recInstance:uint
		public var recType:uint
		public var recLen:uint
		
		public function RecordHeader(recVer:uint=0, recInstance:uint=0, recType:uint=0, recLen:uint=0)
		{
			this.recVer = recVer;
			this.recInstance = recInstance;
			this.recType = recType;
			this.recLen = recLen;
		}
		public function toString():String
		{
			return 'recVer:' + recVer + '\n' +
				   'recInstance:' + recInstance + '\n' +
				   'recType:' + recInstance + '\n' +
				   'recLen:' + recInstance;
		}
	}

}