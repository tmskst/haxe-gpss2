package jp.wda.g2.extention.nio;

import java.StdTypes;
@:native("jp.wda.g2.extention.nio.NioSocketProcessor")
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
extern class NioSocketProcessor extends jp.wda.g2.system.AbstractSocketProcessor 
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new(connection:jp.wda.g2.Connection,container:jp.wda.g2.system.SockletContainer):Void;
/** {@inheritDoc}  */
/** {@inheritDoc}  */
	//override public function terminate():Void;
	@:overload(function ():Void {})
/** {@inheritDoc}  */
	public function send(message:String):Bool;

}
