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
		
		public function RecordHeader(recVer:uint, recInstance:uint, recType:uint, recLen:uint)
		{
			this.recVer = recVer;
			this.recInstance = recInstance;
			this.recType = recType;
			this.recLen = recLen;
		}
		public function toString():String
		{
			return 'recVer:' + recVer + '/n' +
				   'recInstance:' + recInstance + '/n' +
				   'recType:' + recInstance + '/n' +
				   'recLen:' + recInstance;
		}
	}

}