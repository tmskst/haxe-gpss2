package jp.wda.g2.extention.nio.handler;

import java.StdTypes;
import java.lang.Runnable;
import java.nio.ByteBuffer;
import jp.wda.g2.SocketProcessor;
@:native("jp.wda.g2.extention.nio.handler.CommandHandler")
/**
 *
 *
 * <div style="font-weight:bold; font-size:10.5pt;">
 * [変更履歴]
 * </div><dl style="margin:0px; border:1px solid #eee; padding:10px; font-size:10pt;">
 *
 * <dt> 2.0.0-a1 </dt><dd> 2006/02/23 16:00:00 導入 </dd>
 *
 * </dl>
 * @version	2.0.0-a1
 * @since		2.0.0-a1
 *
 * @author		A M O I
 */
extern class CommandHandler implements Runnable {
	public function new(client:SocketProcessor,buffer:ByteBuffer):Void;
	public function run():Void;
}
