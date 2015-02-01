package com.evony.eum {
import flash.xml.*;

import mx.utils.StringUtil;

public class ItemEumDefine extends Object {

    private static var instance:ItemEumDefine = new ItemEumDefine();

    public static function getItemEum(param1:String):ItemEum {
        return instance.itemArray[param1] as ItemEum;
    }

    public static function getItemEumArray():Array {
        return instance.itemArray;
    }

    public static function addPacketItem(param1:String):void {
        var _loc2_:XML = null;
        var _loc4_:String = null;
        var _loc5_:ItemEum = null;
        var _loc3_:XML = new XML(param1);
        for each(_loc2_ in _loc3_.items.itemEum) {
            _loc4_ = _loc2_.@id;
            if (_loc4_) {
                _loc5_ = instance.itemArray[_loc4_];
                if (_loc5_ == null) {
                    _loc5_ = new ItemEum();
                    _loc5_.id = _loc4_;
                    _loc5_.heroItem = _loc2_.@heroItem == "true";
                    _loc5_.playerItem = _loc2_.@playerItem == "true";
                    _loc5_.itemType = _loc2_.@itemType;
                    instance.itemArray[_loc4_] = _loc5_;
                }
                _loc5_.name = StringUtil.trim(_loc2_.@name);
                _loc5_.dayLimit = _loc2_.@dayLimit;
                _loc5_.userLimit = _loc2_.@userLimit;
                _loc5_.desc = _loc2_.@desc;
                _loc5_.itemDesc = _loc2_.@itemDesc;
                if ((_loc5_.desc) && (_loc5_.itemDesc) && _loc5_.desc.indexOf(_loc5_.itemDesc) >= 0) {
                    _loc5_.itemDesc = "";
                }
                _loc5_.iconUrl = _loc2_.@iconUrl;
                _loc5_.price = _loc2_.@price;
            }
        }
        for each(_loc2_ in _loc3_.special.pack) {
            if (_loc2_.@id) {
                _loc5_ = new ItemEum();
                _loc5_.id = _loc2_.@id;
                instance.packetArray[_loc5_.id] = _loc5_;
            }
        }
        for each(_loc2_ in _loc3_.special2.pack) {
            if (_loc2_.@id) {
                _loc5_ = new ItemEum();
                _loc5_.id = _loc2_.@id;
                instance.packetArray2[_loc5_.id] = _loc5_;
            }
        }
    }

    public static function getPacketItemEumArray2():Array {
        return instance.packetArray2;
    }

    public static function getPacketItemEumArray():Array {
        return instance.packetArray;
    }

    public function ItemEumDefine() {
        var _loc2_:XMLNode = null;
        var _loc3_:ItemEum = null;
        super();
        this.itemArray = new Array();
        this.packetArray = new Array();
        this.packetArray2 = new Array();
        var _loc1_:XMLDocument = GetDataXML.instance.getXMLDoc("ItemEumDefine");
        for each(_loc2_ in _loc1_.lastChild.childNodes) {
            if (_loc2_.attributes.id) {
                _loc3_ = new ItemEum();
                _loc3_.id = _loc2_.attributes.id;
                _loc3_.name = _loc2_.attributes.name;
                _loc3_.itemType = _loc2_.attributes.itemType;
                _loc3_.dayLimit = _loc2_.attributes.dayLimit;
                _loc3_.userLimit = _loc2_.attributes.userLimit;
                _loc3_.desc = _loc2_.attributes.desc;
                _loc3_.itemDesc = _loc2_.attributes.itemDesc;
                if ((_loc3_.desc) && (_loc3_.itemDesc) && _loc3_.desc.indexOf(_loc3_.itemDesc) >= 0) {
                    _loc3_.itemDesc = "";
                }
                _loc3_.iconUrl = _loc2_.attributes.iconUrl;
                _loc3_.price = _loc2_.attributes.price;
                _loc3_.heroItem = _loc2_.attributes.heroItem == "true";
                _loc3_.playerItem = _loc2_.attributes.playerItem == "true";
                this.itemArray[_loc3_.id] = _loc3_;
            }
        }
    }

    private var packetArray2:Array;

    private var itemArray:Array;

    private var packetArray:Array;
}
}
