package jp.wda.g2.extention.socklet;

import java.StdTypes;
@:native("jp.wda.g2.extention.socklet.CommandRequestImpl")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/03/03 1:18:28 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern class CommandRequestImpl extends jp.wda.g2.system.SockletRequestImpl , implements jp.wda.g2.extention.socklet.CommandRequest,implements java.io.Serializable
{
/**
 * 
 * 
 * @param request
 */
	@:overload(function (request:jp.wda.g2.SockletRequest):Void {})
/**
 * 
 * 
 * @param client
 * @param rawCommand
 * @param linkage
 */
	public function new(client:jp.wda.g2.SocketProcessor,rawCommand:java.nio.ByteBuffer,linkage:jp.wda.g2.system.SockletLinkage):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getType():java.NativeArray<java.lang.Class<Dynamic>>;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setType(s:java.NativeArray<java.lang.Class<Dynamic>>):Void;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getName():String;
/**
 * XXXを取得します。<BR>
 * @return XXX
 */
	public function getParams():java.NativeArray<Dynamic>;
	public function toString():String;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setName(s:String):Void;
/**
 * XXXを設定します。<BR>
 * @param s 設定値<BR>
 */
	public function setParams(s:java.NativeArray<Dynamic>):Void;

}
