package jp.wda.g2.extention.socklet;

import java.StdTypes;
@:native("jp.wda.g2.extention.socklet.CommandSocklet")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/03/02 23:45:07 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class CommandSocklet extends jp.wda.g2.GeneralSocklet , implements jp.wda.g2.extention.socklet.ICommandSocklet
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 */
	public function new():Void;
/**
 * 送られてきたコマンドを解析し、メソッドをリフレクションするための情報を作成します。<BR>
 * 接続中のクライアントから、コマンドが送信されてきたときに呼ばれます。<BR>
 * 派生クラスではこのメソッドをオーバーライドし、コマンドの解釈方法を記述してください。<BR>
 * 
 * @param request 受信したコマンド情報
 */
	private function parseCommand(request:jp.wda.g2.extention.socklet.CommandRequestImpl):jp.wda.g2.extention.socklet.CommandRequest;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setExecIgnoreCase(s:Bool):Void;
/**
 * コマンド名処理リフレクションメソッド未定義字の処理を行ないます。
 * 
 * @param request
 */
	public function cmdUndefined(request:jp.wda.g2.extention.socklet.CommandRequest):Dynamic;
/**
 * コマンド実行前処理を行ないます。<BR>
 * このメソッドの戻り値は、コマンド処理リフレクションメソッドに引き渡されます。<BR>
 * 全てのコマンドに共通する処理を記述したい場合は、このメソッドをオーバーライドしてください。<BR>
 * SockletException例外を投げると、コマンドの解釈を中止し、doCommand内で直ちに偽を返します。
 * 
 * @param request 受信したコマンド情報
 * @throws GPSSException コマンド解釈処理を中止したい場合。
 */
	public function preProcess(request:jp.wda.g2.extention.socklet.CommandRequest):Void;
/**
 * 
 * @param request
 * @return
 * @throws GPSSException
 */
	public function doCommandMethod(request:jp.wda.g2.extention.socklet.CommandRequest):Dynamic;
/** {@inheritDoc}  */
	override public function doCommand(req:jp.wda.g2.SockletRequest):Dynamic;
/**
 * コマンド名の大文字小文字を区別するかどうかを決定します。
 * 真を返す場合は、大文字小文字を区別しません。
 * @return 大文字小文字を区別しないなら真
 */
	public function isExecIgnoreCase():Bool;

}
