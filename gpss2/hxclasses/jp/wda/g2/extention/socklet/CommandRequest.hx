package jp.wda.g2.extention.socklet;

import java.StdTypes;
@:native("jp.wda.g2.extention.socklet.CommandRequest")
/**
 * 
 * 
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 * 
 * <dt> 2.0.0-a1 </dt><dd> 2006/04/21 23:25:11 導入 </dd>
 * 
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 * 
 * @author		A M O I
 */
extern interface CommandRequest
{
/**
 * 
 * @return
 */
	public function getType():java.NativeArray<java.lang.Class<Dynamic>>;
/**
 * 
 * @return
 */
	public function getName():String;
/**
 * 
 * @return
 */
	public function getParams():java.NativeArray<Dynamic>;

}
