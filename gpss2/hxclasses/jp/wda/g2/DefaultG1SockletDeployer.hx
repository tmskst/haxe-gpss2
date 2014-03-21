package jp.wda.g2;

import java.StdTypes;
@:native("jp.wda.g2.DefaultG1SockletDeployer")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/05/02 20:03:53 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class DefaultG1SockletDeployer extends jp.wda.g2.system.AbstractSockletDeployer 
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/** {@inheritDoc}  */
	override public function select(client:jp.wda.g2.SocketProcessor,command:String,linkage:jp.wda.g2.system.SockletLinkage):Dynamic;

}
