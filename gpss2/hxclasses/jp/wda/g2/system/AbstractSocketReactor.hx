package jp.wda.g2.system;

import java.StdTypes;
@:native("jp.wda.g2.system.AbstractSocketReactor")
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
extern class AbstractSocketReactor extends java.lang.Thread , implements jp.wda.g2.SocketReactor
{
/** システムロガー  */
	private var syslog:jp.wda.gpss.util.Logger;
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	@:overload(function ():Void {})
/**
 * 
 * 
 * @param threadName 
 */
	public function new(threadName:String):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getPort():Int;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setPort(s:Int):Void;
/**
 * 
 * @param container
 * @param client
 */
	public function notifyAcceptance(container:jp.wda.g2.system.SockletContainer,client:jp.wda.g2.SocketProcessor):Void;
/**
 * 
 * @param connection
 * @return 
 */
	public function accept(connection:jp.wda.g2.Connection):jp.wda.g2.SocketProcessor;
	//@:overload(function ():Void {})
/**
 * XXXを設定します。<BR>
 * @param socklet 設定値<BR>
 */
	public function setDefaultSocklet(socklet:jp.wda.g2.SockletDeployer):Void;
/**
 * 
 * @param container
 * @param client
 */
	public function notifyDesertion(container:jp.wda.g2.system.SockletContainer,client:jp.wda.g2.SocketProcessor):Void;
/**
 * 
 * @return
 */
	public function getSystemCommandSocklet():jp.wda.g2.Socklet;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setSocketProcessorFactory(s:jp.wda.g2.SocketProcessorFactory):Void;
/**
 * 
 * @param config
 */
	static public function startServer(config:String):Void;
	override public function run():Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getDefaultSockletContainer():jp.wda.g2.system.SockletContainer;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getDefaultSocklet():jp.wda.g2.SockletDeployer;

}
