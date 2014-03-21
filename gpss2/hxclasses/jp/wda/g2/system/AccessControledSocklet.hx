package jp.wda.g2.system;
import java.StdTypes;
import jp.wda.g2.security.ClientChecker;
import jp.wda.g2.SocketProcessor;

@:native("jp.wda.g2.system.AccessControledSocklet")
extern class AccessControledSocklet extends AbstractSocklet {
	public function new():Void;
	public function acceptFrom(ipaddr:String):Void;
	public function desert(client:SocketProcessor, linkage:SockletLinkage):Void;
	public function registerClientChecker(checker:ClientChecker):Void;
	public override function preRemoveClient(client:SocketProcessor, linkage:SockletLinkage):Void;
	public override function checkConnection(client:SocketProcessor, linkage:SockletLinkage):Bool;
	public function rejectFrom(ipaddr:String):Void;
	public function accept(client:SocketProcessor, linkage:SockletLinkage):Bool;
	public function denied(client:SocketProcessor, linkage:SockletLinkage):Bool;
}
