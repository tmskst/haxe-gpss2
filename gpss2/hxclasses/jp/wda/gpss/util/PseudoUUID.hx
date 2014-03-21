package jp.wda.gpss.util;

import java.NativeArray;
import java.StdTypes;

@:native("jp.wda.gpss.util.PseudoUUID")
/**
 * ホストアドレス又は指定されたクライアントアドレスから、
 * 擬似UUIDを生成します。
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 1.00α </dt><dd> 2003/04/29 導入 </dd>
 *
 * </dl>
 * @version	1.00α
 * @since		1.00α
 *
 * @author		A M O I
 */
extern class PseudoUUID {
	
	@:overload(function ():Void {})
	public function new(clientaddr:String):Void;
	
	public function get2nd():String;
	public function get1st():String;
	public function equals(obj:Dynamic):Bool;
	static public function MD5(val:String):String;
	
	public function get3rd():String;
	public function toString():String;
	static public function main(args:NativeArray<String>):Void;
	
	public function set3rd(addr:String):Void;
	
}
