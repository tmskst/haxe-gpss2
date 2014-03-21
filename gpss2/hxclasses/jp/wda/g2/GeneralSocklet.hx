package jp.wda.g2;

import java.nio.ByteBuffer;
import jp.wda.g2.security.ClientChecker;
import jp.wda.g2.system.SockletContainer;
import jp.wda.g2.system.SockletLinkage;
import jp.wda.gpss.util.Logger;

/*
import org.seasar.framework.container.S2Container;
*/

@:native("jp.wda.g2.GeneralSocklet")
extern class GeneralSocklet /*extends AccessControledSocklet*/ {
	
	/* jp.wda.g2.GeneralSocklet */
	
	public function new():Void;
	
	@:overload(function(client:SocketProcessor, linkage:SockletLinkage):Bool {})
	public function accept(request:SockletRequest):Bool;
	
	@:overload(function (client:SocketProcessor, linkage:SockletLinkage):Bool {})
	public function denied(request:SockletRequest):Bool;
	
	@:overload(function (client:SocketProcessor,linkage:SockletLinkage):Void {})
	public function desert(request:SockletRequest):Void;
	
	@:overload(function (client:SocketProcessor, commandbuf:ByteBuffer, linkage:SockletLinkage):Dynamic {})
	public function doCommand(request:SockletRequest):Dynamic;
	
	
	/* jp.wda.g2.system.AccessControledSocklet */
	
	public function acceptFrom(ipaddr:String):Void;
	@:final public function checkConnection(client:SocketProcessor, linkage:SockletLinkage):Bool;
	@:final public function preRemoveClient(client:SocketProcessor, linkage:SockletLinkage):Void;
	public function registerClientChecker(checker:ClientChecker):Void;
	public function rejectFrom(ipaddr:String):Void;
	
	
	/* jp.wda.g2.system.AbstractSocklet */
	//@:final private var syslog:Logger;
	
	@:overload(function (name:String):Void {})
	@:overload(function (name:String, socklet:Socklet):Void {})
	@:overload(function (name:String, clazz:Class<Dynamic>):Socklet {})
	public function addChild(name:String, className:String):Socklet;
	
	@:final public function destroyAllSocklets():Void;
	public function getChild(name:String):SockletContainer;
	public function getChildren():List<SockletContainer>;
	private function registerComponent(name:String, clazz:Class<Dynamic>):Dynamic;
	/*
	public function setS2Container(s:S2Container):Void;
	*/
	
	
	/* jp.wda.g2.Socklet (Interface) */
	public function destroy():Void;
	
}
