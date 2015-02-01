package com.evony.eum {
import flash.xml.*;

public class TechEumDefine extends Object {

    private static var instance:TechEumDefine = new TechEumDefine();

    public static function getTechEumByType(param1:int):TechEum {
        return instance.map[param1] as TechEum;
    }

    public function TechEumDefine() {
        var _loc3_:XMLNode = null;
        var _loc4_:TechEum = null;
        var _loc5_:Array = null;
        var _loc6_:XMLNode = null;
        var _loc7_:Array = null;
        var _loc8_:XMLNode = null;
        super();
        this.map = new Object();
        var _loc1_:XMLDocument = GetDataXML.instance.getXMLDoc("TechEumDefine");
        var _loc2_:Array = _loc1_.lastChild.childNodes;
        for each(_loc3_ in _loc2_) {
            _loc4_ = new TechEum();
            if (_loc3_.attributes.typeId) {
                _loc4_.typeId = _loc3_.attributes.typeId;
                _loc4_.name = _loc3_.attributes.name;
                _loc4_.desc = _loc3_.attributes.desc;
                _loc4_.wikiDesc = _loc3_.attributes.wikiDesc;
            }
            if (_loc3_.hasChildNodes()) {
                _loc5_ = _loc3_.firstChild.nextSibling.childNodes;
                for each(_loc6_ in _loc5_) {
                    if (_loc6_.attributes.level) {
                        _loc4_.addUpLevelDesc(new UpLevelDesc(_loc6_.attributes.level, _loc6_.attributes.upLevelDesc));
                    }
                }
                _loc7_ = _loc3_.lastChild.previousSibling.childNodes;
                for each(_loc8_ in _loc7_) {
                    if (_loc8_.attributes.level) {
                        _loc4_.addLevelData(new TechLevelData(_loc8_.attributes.level, _loc8_.attributes.food, _loc8_.attributes.wood, _loc8_.attributes.iron, _loc8_.attributes.stone, _loc8_.attributes.gold, _loc8_.attributes.time, _loc8_.attributes.effect));
                    }
                }
                this.map[_loc4_.typeId] = _loc4_;
            }
        }
    }

    private var map:Object;
}
}
