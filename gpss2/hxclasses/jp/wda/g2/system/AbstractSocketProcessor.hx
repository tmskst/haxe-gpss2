package jp.wda.g2.system;

import haxe.Int64;
import java.nio.ByteBuffer;
import jp.wda.g2.ConnectingConditions;
import jp.wda.g2.Connection;
import jp.wda.g2.SocketProcessor;
import jp.wda.gpss.util.Logger;

@:native("jp.wda.g2.system.AbstractSocketProcessor")
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
extern /*abstract*/ class AbstractSocketProcessor implements SocketProcessor {
	
	/** システムロガー  */
	private var syslog:Logger;
	
	/**
	 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
	 */
	public function new(connection:Connection, container:SockletContainer):Void;
	
	/**
	 * XXXを設定します。<BR>
	 * @param s 設定値<BR>
	 */
	public function setConnectingConditions(s:ConnectingConditions):Void;
	
	/**
	 * 終了済みソケットであるかどうかを取得します。<BR>
	 * @return 終了済みソケットであるなら真
	 */
	public function isTerminated():Bool;
	
	/**   */
	@:overload(function ():Void {})
	public function terminate():Void;
	
	/**
	 * XXXを設定します。<BR>
	 * @param s 設定値<BR>
	 */
	public function setAttributes(s:Dynamic):Void;
	
	/**
	 *	使用するデフォルトのエンコーディング名を取得します。<BR>
	 *	@return デフォルトのエンコーディング名
	 *	@see jp.wda.g2.SocketProcessor#getEncoding()
	 */
	public function getEncoding():String;
	
	/**
	 * タイムアウトするミリ秒数を取得します。<BR>
	 * @return タイムアウトするミリ秒数
	 */
	public function getTimeout():Int64;
	
	/**
	 * タイムアウトするミリ秒数を設定します。<BR>
	 * @param s 設定値<BR>
	 */
	public function setTimeout(s:Int64):Void;
	
	/**
	 * クライアントのホストIPアドレスを取得します。<BR>
	 * @return クライアントのホストIPアドレス
	 * @see jp.wda.g2.SocketProcessor#getIPAddress()
	 */
	public function getIPAddress():String;
	
	/**
	 * XXXを取得します。<BR>
	 * @return XXX
	 */
	public function getConnection():Connection;
	
	/**
	 *
	 * @param command
	 */
	public function doCommand(command:ByteBuffer):Void;
	
	/**
	 * XXXを取得します。<BR>
	 * @return XXX
	 */
	public function getConnectingConditions():ConnectingConditions;
	
	/**
	 *	クライアントIDを取得します。<BR>
	 *	@return クライアントID
	 *	@see jp.wda.g2.SocketProcessor#getClientID()
	 */
	public function getClientID():String;
	
	/**
	 * XXXを取得します。<BR>
	 * @return XXX
	 */
	public function getAttributes():Dynamic;
	
	/**
	 *	使用するデフォルトのエンコーディング名を設定します。<BR>
	 *	@param s 設定値<BR>
	 */
	public function setEncoding(s:String):Void;
	
	/* INTERFACE jp.wda.g2.SocketProcessor */
	
	public /*abstract*/ function send(message:String):Bool;
	
}
