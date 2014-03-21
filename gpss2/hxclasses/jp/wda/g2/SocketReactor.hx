package jp.wda.g2;

import java.StdTypes;
@:native("jp.wda.g2.SocketReactor")
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
extern interface SocketReactor
{
/**
 * 
 * @param container
 * @param client
 */
	public function notifyAcceptance(container:jp.wda.g2.system.SockletContainer,client:jp.wda.g2.SocketProcessor):Void;
/**   */
	public function start():Void;
/**
 * 
 * @param connection
 */
	public function accept(connection:jp.wda.g2.Connection):jp.wda.g2.SocketProcessor;
/**
 * 
 * @param container
 * @param client
 */
	public function notifyDesertion(container:jp.wda.g2.system.SockletContainer,client:jp.wda.g2.SocketProcessor):Void;

}
