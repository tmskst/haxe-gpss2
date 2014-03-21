package jp.wda.g2.security;

import java.StdTypes;
@:native("jp.wda.g2.security.ClientChecker")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/26 2:09:20 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		Takenori Adachi(TheCoolMuseum)
 */
extern class ClientChecker 
{
/**  接続が許可された場合の値 */
	static public var ACCEPT:Int;
/**  判断が保留し、次の条件へ連鎖させる場合の値 */
	static public var CHAIN:Int;
/**  接続が拒否された場合の値 */
	static public var REJECT:Int;
	public function new():Void;
/**
 * クライアントを検査し接続を許可するかどうか判定します。<br>
 * 結果は許可(ACCEPT), 保留(CHAIN), 拒否(REJECT)のいずれかを返してください。
 * @param client 検査を行うクライアント
 * @return 検査の結果(ACCEPT|CHAIN|REJECT)
 */
	public function enter(client:jp.wda.g2.SocketProcessor):Int;
/**
 * クライアント接続時に呼び出されます。<br>
 * リソースの開放などが必要な場合はこのメソッドをオーバーライドします。
 * @param client 
 */
	public function exit(client:jp.wda.g2.SocketProcessor):Void;

}
