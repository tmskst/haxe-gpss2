package jp.wda.g2.extention.nio;

import java.StdTypes;
@:native("jp.wda.g2.extention.nio.NioSocketReactor")
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
extern class NioSocketReactor extends jp.wda.g2.system.AbstractSocketReactor 
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setContainer(s:org.seasar.framework.container.S2Container):Void;
/**
 * 
 * @param r
 */
	public function execute(r:java.lang.Runnable):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getPool():java.util.concurrent.ExecutorService;
/**
 * 
 * @param container
 * @param client
 */
	override public function notifyAcceptance(container:jp.wda.g2.system.SockletContainer,client:jp.wda.g2.SocketProcessor):Void;
/**   */
	override public function accept():Void;
/**
 * 
 * @param ipaddr
 */
	public function systemCommandRejectFrom(ipaddr:String):Void;
/**
 * 
 * @param ipaddr
 */
	public function systemCommandAcceptFrom(ipaddr:String):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	override public function getSystemCommandSocklet():jp.wda.g2.Socklet;
/**
 * 
 * @param container
 * @param client
 */
	override public function notifyDesertion(container:jp.wda.g2.system.SockletContainer,client:jp.wda.g2.SocketProcessor):Void;
/**
 * タイムアウトしたクライアントを検査する巡回間隔をミリ秒で設定します。<BR>
 * デフォルトは10秒です。
 * 
 * @param s 設定値<BR>
 */
	public function setSweeperDelay(s:haxe.Int64):Void;
/**   */
	public function shutdown():Void;

}
