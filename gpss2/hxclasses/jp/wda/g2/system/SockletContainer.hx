package jp.wda.g2.system;

import java.StdTypes;
@:native("jp.wda.g2.system.SockletContainer")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/27 3:12:47 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class SockletContainer 
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new(name:String,socklet:jp.wda.g2.Socklet):Void;
/**
 * 
 * @return
 */
	public function getAllClients():java.NativeArray<jp.wda.g2.SocketProcessor>;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getSocklet():jp.wda.g2.Socklet;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getName():String;

}
