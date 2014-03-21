package jp.wda.g2;

import java.StdTypes;
import jp.wda.g2.system.SockletContainer;

@:native("jp.wda.g2.SocketProcessorFactory")
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
extern interface SocketProcessorFactory {
	
	/**
	 *
	 * @param connection
	 * @param container
	 * @return
	 */
	public function createProcessor(connection:Connection, container:SockletContainer):SocketProcessor;
	
}
