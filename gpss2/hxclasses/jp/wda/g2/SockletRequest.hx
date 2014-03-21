package jp.wda.g2;

import java.NativeArray;
import java.nio.ByteBuffer;
import jp.wda.g2.system.SockletContainer;
import jp.wda.g2.system.SockletLinkage;

@:native("jp.wda.g2.SockletRequest")
/**
 *
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 2.0.0-a1 </dt><dd> 2006/04/21 23:22:46 導入 </dd>
 *
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 *
 * @author		A M O I
 */
extern interface SockletRequest {
	
	public function getCommand():String;
	public function getLinkage():SockletLinkage;
	public function send(message:String):Void;
	public function getAllClients():NativeArray<SocketProcessor>;
	public function handoverRequest():Dynamic;
	public function getRawCommand():ByteBuffer;
	public function getClient():SocketProcessor;
	public function getClientID():String;
	public function setNextSocklet(container:SockletContainer, removeChildren:Bool):Void;
	public function getAttribute():Dynamic;
	
	/**
	 * 現在このSockletに接続中の全てのクライアントに向けて、メッセージを送信します。<BR>
	 * このメソッドは、指定されたStringを特に加工することなく送信しますが、
	 * Flash XMLSocketの規定に則り、文字列末尾は必ず\0として送信しますので、
	 * Socklet制作者は特にそれを意識する必要はありません。
	 * @param message 送信するメッセージ
	 */
	public function sendToAllClients(message:String):Void;
	
}
