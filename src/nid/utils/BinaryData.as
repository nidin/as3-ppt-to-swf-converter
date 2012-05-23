package nid.utils
{

	import flash.utils.ByteArray;
	import flash.utils.Endian;
	import nid.utils.BitArray;
	import nid.utils.HalfPrecisionWriter;
	
	public class BinaryData extends BitArray
	{
		public static const FLOAT16_EXPONENT_BASE:Number = 15;
		
		public function BinaryData() {
			endian = Endian.LITTLE_ENDIAN;
		}

		/////////////////////////////////////////////////////////
		// Integers
		/////////////////////////////////////////////////////////
		
		public function readSI8():int {
			resetBitsPending();
			return readByte();
		}
		
		public function writeSI8(value:int):void {
			resetBitsPending();
			writeByte(value);
		}

		public function readSI16():int {
			resetBitsPending();
			return readShort();
		}
		
		public function writeSI16(value:int):void {
			resetBitsPending();
			writeShort(value);
		}

		public function readSI32():int {
			resetBitsPending();
			return readInt();
		}
		
		public function writeSI32(value:int):void {
			resetBitsPending();
			writeInt(value);
		}

		public function readUI8():uint {
			resetBitsPending();
			return readUnsignedByte();
		}
		
		public function writeUI8(value:uint):void {
			resetBitsPending();
			writeByte(value);
		}

		public function readUI16():uint {
			resetBitsPending();
			return readUnsignedShort();
		}
		
		public function writeUI16(value:uint):void {
			resetBitsPending();
			writeShort(value);
		}

		public function readUI24():uint {
			resetBitsPending();
			var loWord:uint = readUnsignedShort();
			var hiByte:uint = readUnsignedByte();
			return (hiByte << 16) | loWord;
		}
		
		public function writeUI24(value:uint):void {
			resetBitsPending();
			writeShort(value & 0xffff);
			writeByte(value >> 16);
		}
		
		public function readUI32():uint {
			resetBitsPending();
			return readUnsignedInt();
		}
		
		public function writeUI32(value:uint):void {
			resetBitsPending();
			writeUnsignedInt(value);
		}
		
		/////////////////////////////////////////////////////////
		// Fixed-point numbers
		/////////////////////////////////////////////////////////
		
		public function readFIXED():Number {
			resetBitsPending();
			return readInt() / 65536;
		}
		
		public function writeFIXED(value:Number):void {
			resetBitsPending();
			writeInt(int(value * 65536));
		}

		public function readFIXED8():Number {
			resetBitsPending();
			return readShort() / 256;
		}

		public function writeFIXED8(value:Number):void {
			resetBitsPending();
			writeShort(int(value * 256));
		}

		/////////////////////////////////////////////////////////
		// Floating-point numbers
		/////////////////////////////////////////////////////////
		
		public function readFLOAT():Number {
			resetBitsPending();
			return readFloat();
		}
		
		public function writeFLOAT(value:Number):void {
			resetBitsPending();
			writeFloat(value);
		}

		public function readDOUBLE():Number {
			resetBitsPending();
			return readDouble();
		}

		public function writeDOUBLE(value:Number):void {
			resetBitsPending();
			writeDouble(value);
		}

		public function readFLOAT16():Number {
			resetBitsPending();
			var word:uint = readUnsignedShort();
			var sign:int = ((word & 0x8000) != 0) ? -1 : 1;
			var exponent:uint = (word >> 10) & 0x1f;
			var significand:uint = word & 0x3ff;
			if (exponent == 0) {
				if (significand == 0) {
					return 0;
				} else {
					// subnormal number
					return sign * Math.pow(2, 1 - FLOAT16_EXPONENT_BASE) * (significand / 1024);
				}
			}
			if (exponent == 31) { 
				if (significand == 0) {
					return (sign < 0) ? Number.NEGATIVE_INFINITY : Number.POSITIVE_INFINITY;
				} else {
					return Number.NaN;
				}
			}
			// normal number
			return sign * Math.pow(2, exponent - FLOAT16_EXPONENT_BASE) * (1 + significand / 1024);
		}
		
		public function writeFLOAT16(value:Number):void {
			HalfPrecisionWriter.write(value, this);
		}

		/////////////////////////////////////////////////////////
		// Encoded integer
		/////////////////////////////////////////////////////////
		
		public function readEncodedU32():uint {
			resetBitsPending();
			var result:uint = readUnsignedByte();
			if (result & 0x80) {
				result = (result & 0x7f) | (readUnsignedByte() << 7);
				if (result & 0x4000) {
					result = (result & 0x3fff) | (readUnsignedByte() << 14);
					if (result & 0x200000) {
						result = (result & 0x1fffff) | (readUnsignedByte() << 21);
						if (result & 0x10000000) {
							result = (result & 0xfffffff) | (readUnsignedByte() << 28);
						}
					}
				}
			}
			return result;
		}
		
		public function writeEncodedU32(value:uint):void {
			for (;;) {
				var v:uint = value & 0x7f;
				if ((value >>= 7) == 0) {
					writeUI8(v);
					break;
				}
				writeUI8(v | 0x80);
			}
		}

		/////////////////////////////////////////////////////////
		// Bit values
		/////////////////////////////////////////////////////////
		
		public function readUB(bits:uint):uint {
			return readBits(bits);
		}

		public function writeUB(bits:uint, value:uint):void {
			writeBits(bits, value);
		}

		public function readSB(bits:uint):int {
			var shift:uint = 32 - bits;
			return int(readBits(bits) << shift) >> shift;
		}
		
		public function writeSB(bits:uint, value:int):void {
			writeBits(bits, value);
		}
		
		public function readFB(bits:uint):Number {
			return Number(readSB(bits)) / 65536;
		}
		
		public function writeFB(bits:uint, value:Number):void {
			writeSB(bits, value * 65536);
		}
		
		/////////////////////////////////////////////////////////
		// String
		/////////////////////////////////////////////////////////
		
		public function readString():String {
			var index:uint = position;
			while (this[index++]) {}
			resetBitsPending();
			return readUTFBytes(index - position);
		}
		
		public function writeString(value:String):void {
			if (value && value.length > 0) {
				writeUTFBytes(value);
			}
			writeByte(0);
		}
		
		/////////////////////////////////////////////////////////
		// Language code
		/////////////////////////////////////////////////////////
		
		public function readLANGCODE():uint {
			resetBitsPending();
			return readUnsignedByte();
		}
		
		public function writeLANGCODE(value:uint):void {
			resetBitsPending();
			writeByte(value);
		}
		
		/////////////////////////////////////////////////////////
		// Color records
		/////////////////////////////////////////////////////////
		
		public function readRGB():uint {
			resetBitsPending();
			var r:uint = readUnsignedByte();
			var g:uint = readUnsignedByte();
			var b:uint = readUnsignedByte();
			return 0xff000000 | (r << 16) | (g << 8) | b;
		}
		
		public function writeRGB(value:uint):void {
			resetBitsPending();
			writeByte((value >> 16) & 0xff);
			writeByte((value >> 8) & 0xff);
			writeByte(value  & 0xff);
		}

		public function readRGBA():uint {
			resetBitsPending();
			var rgb:uint = readRGB() & 0x00ffffff;
			var a:uint = readUnsignedByte();
			return a << 24 | rgb;
		}
		
		public function writeRGBA(value:uint):void {
			resetBitsPending();
			writeRGB(value);
			writeByte((value >> 24) & 0xff);
		}

		public function readARGB():uint {
			resetBitsPending();
			var a:uint = readUnsignedByte();
			var rgb:uint = readRGB() & 0x00ffffff;
			return (a << 24) | rgb;
		}
		
		public function writeARGB(value:uint):void {
			resetBitsPending();
			writeByte((value >> 24) & 0xff);
			writeRGB(value);
		}
		
		public function skipBytes(length:uint):void {
			position += length;
		}
		
		public function dump(length:uint, offset:int = 0):void {
			var pos:uint = position;
			position += offset;
			var str:String = "bitsPending: " + bitsPending;
			for (var i:uint = 0; i < length; i++) {
				var b:String = readUnsignedByte().toString(16);
				if(b.length == 1) { b = "0" + b; }
				if(i % 16 == 0) {
					var addr:String = (pos + offset + i).toString(16);
					addr = "00000000".substr(0, 8 - addr.length) + addr;
					str += "\r" + addr + ": ";
				}
				b += " ";
				str += b;
			}
			position = pos;
			trace(str);
		}
	}
}
