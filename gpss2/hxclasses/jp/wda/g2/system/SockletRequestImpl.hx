package jp.wda.g2.system;

import java.StdTypes;
@:native("jp.wda.g2.system.SockletRequestImpl")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/04/21 23:53:27 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class SockletRequestImpl implements jp.wda.g2.SockletRequest,implements java.io.Serializable
{
/**
 * 
 * 
 * @param request
 */
	@:overload(function (request:jp.wda.g2.SockletRequest):Void {})
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new(client:jp.wda.g2.SocketProcessor,rawCommand:java.nio.ByteBuffer,linkage:jp.wda.g2.system.SockletLinkage):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getCommand():String;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getLinkage():jp.wda.g2.system.SockletLinkage;
/** {@inheritDoc}  */
	public function send(message:String):Void;
/** {@inheritDoc}  */
	public function getAllClients():java.NativeArray<jp.wda.g2.SocketProcessor>;
/** {@inheritDoc}  */
	public function handoverRequest():Dynamic;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getRawCommand():java.nio.ByteBuffer;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getClient():jp.wda.g2.SocketProcessor;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setAttribute(s:Dynamic):Void;
/**
 * 
 * @return
 */
	public function getClientID():String;
/** {@inheritDoc}  */
	public function setNextSocklet(container:jp.wda.g2.system.SockletContainer,removeChildren:Bool):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getAttribute():Dynamic;
/** {@inheritDoc}  */
	public function sendToAllClients(message:String):Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	private function setLinkage(s:jp.wda.g2.system.SockletLinkage):Void;

}
