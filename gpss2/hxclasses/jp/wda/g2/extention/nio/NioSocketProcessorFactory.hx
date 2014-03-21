package jp.wda.g2.extention.nio;

import java.StdTypes;
@:native("jp.wda.g2.extention.nio.NioSocketProcessorFactory")
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
extern class NioSocketProcessorFactory implements jp.wda.g2.SocketProcessorFactory
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getTimeout():haxe.Int64;
/**
 *	使用するデフォルトのエンコーディング名を設定します。<BR>
 *	@param s 設定値<BR>
 */
	public function setDefaultEncoding(s:String):Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setTimeout(s:haxe.Int64):Void;
/**
 *	使用するデフォルトのエンコーディング名を取得します。<BR>
 *	@return デフォルトのエンコーディング名
 */
	public function getDefaultEncoding():String;
/** {@inheritDoc}  */
	public function createProcessor(connection:jp.wda.g2.Connection,container:jp.wda.g2.system.SockletContainer):jp.wda.g2.SocketProcessor;

}
