package jp.wda.g2.security;

import java.StdTypes;
@:native("jp.wda.g2.security.AccessController")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/26 2:12:26 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		Takenori Adachi(TheCoolMuseum)
 */
extern class AccessController 
{
/**  コンストラクタ */
	public function new():Void;
/**
 * チェック条件を追加します
 * @param checker
 * @return
 */
	public function register(checker:jp.wda.g2.security.ClientChecker):jp.wda.g2.security.AccessController;
/**
 * チェックを順に実行します
 * @param client
 * @return
 */
	public function enter(client:jp.wda.g2.SocketProcessor):Bool;
/**
 * 開放処理を順に実行します
 * @param client
 */
	public function exit(client:jp.wda.g2.SocketProcessor):Void;

}
