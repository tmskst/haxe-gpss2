package jp.wda.g2;

import java.StdTypes;
@:native("jp.wda.g2.SockletDeployer")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/05/02 19:16:19 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern interface SockletDeployer
{
/**
 * ソケットを受け入れるドメインを指定します。
 * domain:portの形で指定してください。
 * 例）gpss.wda.jp:9090
 * 
 * コロン以降を省略すると、このサーバで使用しているポートとみなします。
 * また、どのドメインからも受け入れる場合は、*としてください。
 * 
 * @param domain
 */
	public function allowDomain(domain:String):Void;
/**
 * 
 * @param port
 */
	public function setPort(port:Int):Void;
/**
 * クロスドメインポリシーをXML文字列で返します
 * 
 * @return クロスドメインポリシー
 */
	public function getCrossDomainPolicy():String;
/**
 * 
 * @param name
 * @param socklet
 */
	public function addChild(name:String,socklet:jp.wda.g2.Socklet):Void;

}
