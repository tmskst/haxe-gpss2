package jp.wda.g2.extention.socklet;

import java.StdTypes;
@:native("jp.wda.g2.extention.socklet.XMLCommandRequest")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/06/04 19:14:11 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern interface XMLCommandRequest
{
/**
 * 
 * @return
 */
	public function getXml():jp.wda.g2.util.SimpleXMLCreator;

}
