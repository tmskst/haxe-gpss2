package jp.wda.g2.security;

import java.StdTypes;
@:native("jp.wda.g2.security.AllowDomain")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/26 1:35:07 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		Takenori Adachi(TheCoolMuseum)
 */
extern class AllowDomain implements java.io.Serializable
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new(domain:String,ports:String):Void;
/**
 * 
 * @return 
 */
	public function toString():String;

}
