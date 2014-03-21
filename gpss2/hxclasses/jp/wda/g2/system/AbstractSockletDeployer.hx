package jp.wda.g2.system;

import java.StdTypes;
@:native("jp.wda.g2.system.AbstractSockletDeployer")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/25 19:43:09 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class AbstractSockletDeployer extends jp.wda.g2.system.AccessControledSocklet , implements jp.wda.g2.SockletDeployer
{
/** デフォルトのCross Domain Policy取得用ポート  */
	inline static public var DEFALUT_CDP_PORT:Int = 843;
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/** {@inheritDoc}  */
	public function destroy():Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setPermittedCDP(s:String):Void;
/** {@inheritDoc}  */
	override public function desert(client:jp.wda.g2.SocketProcessor,linkage:jp.wda.g2.system.SockletLinkage):Void;
/** {@inheritDoc}  */
	public function allowDomain(domain:String):Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setPort(s:Int):Void;
/** {@inheritDoc}  */
	public function getCrossDomainPolicy():String;
/**
 * 
 * @param client
 * @param command
 * @param linkage
 * @return
 * @throws GPSSException
 */
	public function select(client:jp.wda.g2.SocketProcessor,command:String,linkage:jp.wda.g2.system.SockletLinkage):Dynamic;
/** {@inheritDoc}  */
	override public function accept(client:jp.wda.g2.SocketProcessor,linkage:jp.wda.g2.system.SockletLinkage):Bool;
/** {@inheritDoc}  */
	override public function denied(client:jp.wda.g2.SocketProcessor,linkage:jp.wda.g2.system.SockletLinkage):Bool;
/** {@inheritDoc}  */
	public function doCommand(client:jp.wda.g2.SocketProcessor,command:java.nio.ByteBuffer,linkage:jp.wda.g2.system.SockletLinkage):Dynamic;

}
