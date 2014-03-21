package jp.wda.g2;

import haxe.Int64;
import java.nio.ByteBuffer;

@:native("jp.wda.g2.SocketProcessor")
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
extern interface SocketProcessor {
	
	public function setConnectingConditions(s:ConnectingConditions):Void;
	
	/**  このソケットを使用しているクライアントを強制的に終了させます。 */
	
	/**
	 * このソケットを使用しているクライアントに終了メッセージ送出後、ソケットを強制的に終了させます。
	 * @param message 終了メッセージ
	 */
	@:overload(function ():Void {})
	public function terminate(message:String):Void;
	
	public function setAttributes(s:Dynamic):Void;
	
	/**
	 * このソケットを使用しているクライアントにメッセージを送ります。<BR>
	 * メッセージはnull文字"\0"を終端とします。<BR>
	 * @param message クライアントに送るメッセージ文字列
	 * @return 送信に成功した場合は真、失敗した場合は偽
	 */
	public function send(message:String):Bool;
	
	/**
	 * このソケットの使用するエンコーディング名を取得します。<BR>
	 * エンコーディング名は、初期設定ファイルで指定されます。
	 * @return エンコーディング名
	 */
	public function getEncoding():String;
	
	/**
	 * このソケットを使用しているクライアントのクライアントIDを取得します。<BR>
	 * クライアントIDは、接続中の全クライアントに対し、一意な文字列となります。
	 * @return クライアントID
	 */
	public function getClientID():String;
	
	public function setEncoding(s:String):Void;
	
	/**
	 * このソケットを使用しているクライアントが既に終了しているかを確認します。
	 * @return 既に終了している場合は真
	 */
	public function isTerminated():Bool;
	
	/**
	 * タイムアウトするミリ秒数を取得します。
	 * @return タイムアウトするミリ秒数
	 */
	public function getTimeout():Int64;
	
	/**
	 * タイムアウトするミリ秒数を設定します。<BR>
	 * @param s 設定値<BR>
	 */
	public function setTimeout(s:Int64):Void;
	
	/**
	 * このソケットを使用しているクライアントのIPアドレスを取得します。<BR>
	 * @return IPアドレス
	 */
	public function getIPAddress():String;
	
	public function doCommand(command:ByteBuffer):Void;
	
	public function getConnectingConditions():ConnectingConditions;
	
	public function getAttributes():Dynamic;
	
}
