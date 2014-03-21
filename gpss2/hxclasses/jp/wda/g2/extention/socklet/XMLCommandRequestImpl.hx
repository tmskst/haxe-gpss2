package jp.wda.g2.extention.socklet;

import java.StdTypes;
@:native("jp.wda.g2.extention.socklet.XMLCommandRequestImpl")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/06/04 18:47:28 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class XMLCommandRequestImpl extends jp.wda.g2.extention.socklet.CommandRequestImpl , implements jp.wda.g2.extention.socklet.XMLCommandRequest,implements java.io.Serializable
{
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 * @param request
 */
	@:overload(function (request:jp.wda.g2.SockletRequest):Void {})
/**
 * デフォルトの設定を用いてオブジェクトを構築するコンストラクタ
 * 
 * @param client
 * @param rawCommand
 * @param linkage
 */
	public function new(client:jp.wda.g2.SocketProcessor,rawCommand:java.nio.ByteBuffer,linkage:jp.wda.g2.system.SockletLinkage):Void;
/** {@inheritDoc}  */
	public function getXml():jp.wda.g2.util.SimpleXMLCreator;
/** {@inheritDoc}  */
	override public function handoverRequest():Dynamic;

}
