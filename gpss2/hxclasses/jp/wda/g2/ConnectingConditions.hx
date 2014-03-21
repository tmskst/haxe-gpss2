package jp.wda.g2;

import java.StdTypes;
@:native("jp.wda.g2.ConnectingConditions")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/25 22:57:46 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class ConnectingConditions implements java.io.Serializable
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
	public function getInitialParameters():String;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getParameter(name:String):String;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getPassword():String;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getUsername():String;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setUsername(s:String):Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setPassword(s:String):Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setInitialParameters(s:String):Void;

}
