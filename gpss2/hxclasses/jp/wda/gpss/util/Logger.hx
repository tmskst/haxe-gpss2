package jp.wda.gpss.util;

import java.StdTypes;
import java.lang.Throwable;
import jp.wda.g2.exception.GPSSException;
import java.NativeArray;

@:native("jp.wda.gpss.util.Logger")
@:final
/**
 *
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/23 16:00:00 導入 </dd>
 *
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 *
 * @author		A M O I
 */
extern class Logger {
	
	@:overload(function (message:Dynamic):Void {})
	public function warn(message:Dynamic, throwable:Throwable):Void;
	
	@:overload(function (messageCode:String):Void {})
	@:overload(function (exception:GPSSException):Void {})
	@:overload(function (messageCode:String, throwable:Throwable):Void {})
	@:overload(function (messageCode:String, args:NativeArray<Dynamic>):Void {})
	public function errormessage(messageCode:String, args:NativeArray<Dynamic>, throwable:Throwable):Void;
	
	public function isInfoEnabled():Bool;
	
	@:overload(function (message:Dynamic):Void {})
	public function error(message:Dynamic, throwable:Throwable):Void;
	
	public function fatalmessage(throwable:Throwable):Void;
	
	@:overload(function (message:Dynamic):Void {})
	public function fatal(message:Dynamic, throwable:Throwable):Void;
	
	public function isDebugEnabled():Bool;
	
	@:overload(function (messageCode:String):Void {})
	@:overload(function (messageCode:String, throwable:Throwable):Void {})
	@:overload(function (messageCode:String, args:NativeArray<Dynamic>):Void {})
	public function infomessage(messageCode:String, args:NativeArray<Dynamic>, throwable:Throwable):Void;
	
	@:overload(function (name:String):Logger {})
	static public function getLogger(clazz:Class<Dynamic>):Logger;
	
	@:overload(function (message:Dynamic):Void {})
	public function debug(message:Dynamic, throwable:Throwable):Void;
	
	@:overload(function (throwable:Throwable):Void {})
	@:overload(function (messageCode:String, args:NativeArray<Dynamic>):Void {})
	public function log(messageCode:String, args:NativeArray<Dynamic>, throwable:Throwable):Void;
	
	@:overload(function (message:Dynamic):Void {})
	public function info(message:Dynamic,throwable:Throwable):Void;
	
}
