package jp.wda.g2.extention.socklet;

import java.StdTypes;
@:native("jp.wda.g2.extention.socklet.XMLCommandSocklet")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/03/03 0:20:57 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class XMLCommandSocklet extends jp.wda.g2.extention.socklet.CommandSocklet , implements jp.wda.g2.extention.socklet.IXmlCommandSocklet
{
/**  コマンドリフレクションメソッドの引数タイプ */
	static public var clazz:java.NativeArray<java.lang.Class<Dynamic>>;
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/**
 * 送られてきたコマンドを解析し、メソッドをリフレクションするための情報を作成します。<BR>
 * 接続中のクライアントから、コマンドが送信されてきたときに呼ばれます。<BR><BR>
 * 
 * @param req 受信したコマンド情報
 */
	override private function parseCommand(req:jp.wda.g2.extention.socklet.CommandRequestImpl):jp.wda.g2.extention.socklet.CommandRequest;

}
