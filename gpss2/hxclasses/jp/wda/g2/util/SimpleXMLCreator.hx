package jp.wda.g2.util;

import haxe.Int64;
import java.NativeArray;
import java.util.List;
import java.util.Map;
import java.util.Set;
import jp.wda.g2.SocketProcessor;

@:native("jp.wda.g2.util.SimpleXMLCreator")
/**
 * 非常に単純なXML作成用クラス
 *
 * @version	1.00		2003/07/07
 * @since		1.00β007	2003/06/08
 * @author	amoi
 */
extern class SimpleXMLCreator {
	
	/**
	 * ノード名を指定してオブジェクトを構築するコンストラクタ
	 * @param name ノード名
	 */
	@:overload(function (name:String):Void {})
	/**
	 * 一つのテキストノードを持ったシンプルなXMLオブジェクトを構築するコンストラクタです。
	 * @param name ノード名
	 * @param textNode テキストノード
	 */
	public function new(name:String, textNode:String):Void;
	
	/**
	 * 指定された属性名の固有属性が設定されているかを確認します。<BR>
	 * @param key 固有属性名<BR>
	 * @return 指定された属性名が設定されていれば真<BR>
	 */
	public function containsAttributeKey(key:Dynamic):Bool;
	
	/**
	 * 指定されたクライアントに
	 * このオブジェクトに設定されているXML形式の文字列を送信します。
	 * @param client 送信したいクライアント
	 */
	public function send(client:SocketProcessor):Void;
	
	/**
	 * 固有属性に格納されている属性名一覧のSetビューを取得します。<BR>
	 * @return 属性名一覧のSetビュー<BR>
	 */
	public function getAttributeKeys():Set<Dynamic>;
	
	/**
	 * このオブジェクトに設定されている、指定された名前の固有属性値を真偽値として取得します。<BR>
	 * @param key 固有属性名
	 * @return 固有属性真偽値
	 */
	public function getAttributeBoolean(key:Dynamic):Bool;
	
	/**
	 * 不正なXMLを防止するためDOCTYPE宣言などを削除する。
	 * @param xml
	 * @return
	 */
	static public function weedout(xml:String):String;
	
	/**
	 * このノードに設定されている、指定された順番の子ノードを取得します。
	 * @param idx 設定順番号 一番初めに設定されたノードは0です。
	 * @return 子ノード
	 */
	@:overload(function (idx:Int):SimpleXMLCreator {})
	/**
	 * このノードに設定されている、指定された名前を持つはじめの子ノードを取得します
	 * @param name 削除する子ノード名
	 * @return 子ノード
	 */
	public function getChild(name:String):SimpleXMLCreator;
	
	/**
	 * このノードに設定されている、全ての子ノードを取得します。
	 * @return 子ノード一覧
	 */
	@:overload(function ():List<SimpleXMLCreator> {})
	/**
	 * このノードに設定されている、指定した名前をもつすべての子ノードを取得します。
	 * @param name 取得する子ノード名
	 * @return 子ノード一覧
	 */
	public function getChildren(name:String):List<SimpleXMLCreator>;
	
	/**  全ての子ノードを削除します */
	@:overload(function ():Void {})
	/**
	 * 指定された名前を持つ全ての子ノードを削除します
	 * @param name 削除する子ノード名
	 */
	public function removeChildren(name:String):Void;
	
	/**
	 * テキストノードを設定
	 * @param textNode テキストノード文字列
	 */
	public function setText(textNode:String):Void;
	
	/**
	 * このオブジェクトに、指定された名前の固有属性値を真偽値として設定します<BR>
	 * @param key 固有属性名<BR>
	 * @param value 固有属性真偽値<BR>
	 */
	@:overload(function (key:Dynamic, value:Int):Void {})
	/**
	 * このオブジェクトに、指定された名前の固有属性値を実数値として設定します<BR>
	 * @param key 固有属性名<BR>
	 * @param value 固有属性実数値<BR>
	 */
	@:overload(function (key:Dynamic, value:Int64):Void {})
	/**
	 * このオブジェクトに、指定された名前の固有属性値を長整数値として設定します<BR>
	 * @param key 固有属性名<BR>
	 * @param value 固有属性長整数値<BR>
	 */
	@:overload(function (key:Dynamic, value:Float):Void {})
	/**
	 * このオブジェクトに、指定された名前の固有属性値を設定します<BR>
	 * @param key 固有属性名<BR>
	 * @param value 固有属性整数値<BR>
	 */
	@:overload(function (key:Dynamic, value:Bool):Void {})
	/**
	 * このオブジェクトに、指定された名前の固有属性値を設定します<BR>
	 * @param key 固有属性名<BR>
	 * @param value 固有属性値<BR>
	 */
	public function setAttribute(key:Dynamic, value:Dynamic):Void;
	
	/**
	 * このオブジェクトに設定されている、指定された名前の固有属性値を取得します。<BR>
	 * @param key 固有属性名
	 * @return 固有属性値
	 */
	public function getAttribute(key:Dynamic):Dynamic;
	
	/**
	 * このオブジェクトに設定されている、指定された名前の固有属性値を実数値として取得します。<BR>
	 * @param key 固有属性名
	 * @return 固有属性長実数値
	 */
	public function getAttributeDouble(key:Dynamic):Float;
	
	/**
	 * main
	 * @param	args
	 */
	static public function main(args:NativeArray<String>):Void;
	
	/**
	 * このオブジェクトに設定されている、指定された名前の固有属性値を整数値として取得します。<BR>
	 * @param key 固有属性名
	 * @return 固有属性整数値
	 */
	public function getAttributeInt(key:Dynamic):Int;
	
	/**
	 * テキストノードを取得
	 * @return テキストノード文字列
	 */
	public function getText():String;
	
	/**
	 * 指定された名前を持つはじめの子ノードを削除します
	 * @param name 削除する子ノード名
	 */
	@:overload(function (name:String):Void {})
	/**
	 * 指定された子ノードを削除します
	 * @param child 削除する子ノード
	 */
	public function removeChild(child:SimpleXMLCreator):Void;
	
	/**
	 * このオブジェクトに設定されている、指定された名前の固有属性値を長整数値として取得します。<BR>
	 * @param key 固有属性名
	 * @return 固有属性長整数値
	 */
	public function getAttributeLong(key:Dynamic):Int64;
	
	/**
	 *	ノード名を取得する<BR>
	 *	@return ノード名
	 */
	public function getName():String;
	
	/**
	 * このノードに設定されている、子ノード数を取得します。
	 * @return 子ノード数
	 */
	public function sizeOfChildren():Int;
	
	/**
	 * このノードに子ノードを追加します
	 * @param name 子ノード名
	 * @return 追加された子ノード
	 */
	@:overload(function (name:String):SimpleXMLCreator {})
	/**
	 * このノードに子ノードを追加します
	 * @param child 追加する子ノード
	 */
	public function addChild(child:SimpleXMLCreator):Void;
	
	/**
	 * このオブジェクトのXML形式で表現された文字列を返します。
	 * @return このオブジェクトのXML形式で表現された文字列
	 */
	public function toString():String;
	
	/**
	 * 指定された属性名の固有属性を削除します。<BR>
	 * @param key 固有属性名<BR>
	 */
	public function removeAttribute(key:Dynamic):Dynamic;
	
	/**
	 *	ノード名を設定する<BR>
	 *	@param s 設定値<BR>
	 */
	public function setName(s:String):Void;
	
	/**
	 * 指定されたXML文字列を解析し、新たなSimpleXMLCreatorオブジェクトを構築します。
	 * @param xml 解析するXML文字列
	 * @return 解析されたSimpleXMLCreatorオブジェクト
	 */
	static public function parse(xml:String):SimpleXMLCreator;
	
	/**
	 * 固有属性に格納されている全ての属性一覧のSetビューを取得します。<BR>
	 * @return 属性一覧のSetビュー<BR>
	 */
	public function getAttributes():Set<java.util.Map_Entry<Dynamic, Dynamic>>;
	
}
