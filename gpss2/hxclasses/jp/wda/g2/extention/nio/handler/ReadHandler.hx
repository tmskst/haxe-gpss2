package jp.wda.g2.extention.nio.handler;

import java.StdTypes;
@:native("jp.wda.g2.extention.nio.handler.ReadHandler")
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
extern class ReadHandler implements java.lang.Runnable,implements jp.wda.g2.Connection
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new(channel:java.nio.channels.SocketChannel,reactor:jp.wda.g2.SocketReactor):Void;
/**  タイムアウトしているなら終了 */
	public function terminateIfInactive():Void;
/**  チャンネルを閉じる */
	public function closeConnection():Void;
/** {@inheritDoc}  */
	public function send(message:String):Bool;
/**
 * タイムアウトしているかどうかチェック
 * @return
 */
	public function isInactive():Bool;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setClient(s:jp.wda.g2.SocketProcessor):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getReactor():jp.wda.g2.SocketReactor;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getClient():jp.wda.g2.SocketProcessor;
	public function run():Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getSocketChannel():java.nio.channels.SocketChannel;

}
