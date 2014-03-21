package jp.wda.g2.exception;

import java.NativeArray;
import java.StdTypes;
import java.lang.Exception;
import java.lang.Throwable;

@:native("jp.wda.g2.exception.GPSSException")
/**
 *
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/25 15:29:53 導入 </dd>
 *
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 *
 * @author		A M O I
 */
extern class GPSSException extends Exception {
	
	@:overload(function ():Void {})
	@:overload(function (messageCode:String):Void {})
	@:overload(function (messageCode:String, cause:Throwable):Void {})
	@:overload(function (messageCode:String, args:NativeArray<Dynamic>):Void {})
	public function new(messageCode:String, args:NativeArray<Dynamic>, cause:Throwable):Void;
	
	public function getMessageCode():String;
	public function setMessage(s:String):Void;
	public function getSimpleMessage():String;
	public function getArgs():NativeArray<Dynamic>;
	
}
