package jp.wda.g2.exception;

import java.StdTypes;
@:native("jp.wda.g2.exception.UncaughtExceptionHandlerImpl")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/23 17:28:07 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class UncaughtExceptionHandlerImpl implements java.lang.Thread_UncaughtExceptionHandler
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/**
 * 
 * @param thread 
 * @param throwable 
 */
	public function uncaughtException(thread:java.lang.Thread,throwable:java.lang.Throwable):Void;

}
