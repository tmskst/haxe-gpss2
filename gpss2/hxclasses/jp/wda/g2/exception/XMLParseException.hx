package jp.wda.g2.exception;

import java.StdTypes;
@:native("jp.wda.g2.exception.XMLParseException")
/**
 *
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/25 17:11:20 導入 </dd>
 *
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 *
 * @author		A M O I
 */
extern class XMLParseException extends GPSSException {
	inline static public var ERROR_CODE:String = "EGSS_XMLAttributeException";
	public function new(command:String):Void;
}
