package jp.wda.g2;

import java.StdTypes;
@:native("jp.wda.g2.Connection")
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
extern interface Connection
{
/**   */
	public function closeConnection():Void;
/**
 * このソケットを使用しているクライアントにメッセージを送ります。<BR>
 * メッセージはnull文字"\0"を終端とします。<BR>
 *
 * @param message クライアントに送るメッセージ文字列
 * @return 送信に成功した場合は真、失敗した場合は偽
 */
	public function send(message:String):Bool;
/**
 * 
 * @return
 */
	public function getReactor():jp.wda.g2.SocketReactor;
/**
 * 
 * @return
 */
	public function getSocketChannel():java.nio.channels.SocketChannel;

}
