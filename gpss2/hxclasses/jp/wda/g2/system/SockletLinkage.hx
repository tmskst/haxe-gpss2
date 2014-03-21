package jp.wda.g2.system;

import java.StdTypes;
@:native("jp.wda.g2.system.SockletLinkage")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/25 15:01:44 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class SockletLinkage 
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new(client:jp.wda.g2.SocketProcessor,container:jp.wda.g2.system.SockletContainer):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getContainer():jp.wda.g2.system.SockletContainer;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setAttributes(s:Dynamic):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function hasNext():Bool;
	public function getSocklet():jp.wda.g2.Socklet;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getNext():jp.wda.g2.system.SockletLinkage;
/**
 * 
 * @param command 
 */
	public function doCommand(command:java.nio.ByteBuffer):Dynamic;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getAttributes():Dynamic;
/**
 * XXXを設定します。<BR>
 * @param container 設定値<BR>
 * @param removeChildren 
 */
	public function setNextSocklet(container:jp.wda.g2.system.SockletContainer,removeChildren:Bool):Void;
/**
 * 現在このSockletに接続中の全てのクライアントに向けて、メッセージを送信します。<BR>
 * このメソッドは、指定されたStringを特に加工することなく送信しますが、
 * Flash XMLSocketの規定に則り、文字列末尾は必ず\0として送信しますので、
 * Socklet制作者は特にそれを意識する必要はありません。
 * 
 * @param message 送信するメッセージ
 */
	public function sendToAllClients(message:String):Void;

}
