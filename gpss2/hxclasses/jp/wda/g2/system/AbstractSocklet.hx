package jp.wda.g2.system;
import java.lang.Class;
import java.util.List;
import jp.wda.g2.SocketProcessor;
import jp.wda.g2.Socklet;
import jp.wda.gpss.util.Logger;
import org.seasar.framework.container.S2Container;
import java.nio.ByteBuffer;

@:native("jp.wda.g2.system.AbstractSocklet")
/**
 *
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/25 19:43:09 導入 </dd>
 *
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 *
 * @author		A M O I
 */
extern class AbstractSocklet implements Socklet {
	/** システムロガー  */
	private var syslog:Logger;
	
	public function new():Void;
	
	/**
	 * XXXを設定します。<BR>
	 * @param s 設定値<BR>
	 */
	public function setS2Container(s:S2Container):Void;
	
	/**
	 *
	 * @param name
	 * @param clazz
	 * @return
	 */
	private function registerComponent(name:String, clazz:Class<Dynamic>):Dynamic;
	
	/**   */
	public function destroyAllSocklets():Void;
	
	/**
	 *
	 * @param name
	 * @return
	 * @throws SockletNotFoundException
	 */
	public function getChild(name:String):jp.wda.g2.system.SockletContainer;
	
	/**
	 *
	 * @return
	 */
	public function getChildren():List<SockletContainer>;
	
	/**
	 *
	 * @param name
	 * @return
	 */
	public function hasChild(name:String):Bool;
	
	@:overload(function (name:String):Void {})
	@:overload(function (name:String, socklet:Socklet):Void {})
	@:overload(function (name:String, clazz:Class<Dynamic>):Socklet {})
	public function addChild(name:String, className:String):Socklet;
	
	/* ***************** */
	
	public function destroy():Void;
	public function preRemoveClient(client:SocketProcessor, linkage:SockletLinkage):Void;
	public function checkConnection(client:SocketProcessor, linkage:SockletLinkage):Bool;
	public function doCommand(client:SocketProcessor, command:ByteBuffer, linkage:SockletLinkage):Dynamic;
}
