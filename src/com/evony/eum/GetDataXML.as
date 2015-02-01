package com.evony.eum {
import flash.utils.*;
import flash.xml.*;

public class GetDataXML extends Object {

    public static var instance:GetDataXML = new GetDataXML();

    public static function getInstance():void {
        if (!instance) {
            instance = new GetDataXML();
        }
    }

    public function GetDataXML() {
        super();
        this.xmlDoc = new XMLDocument();
        this.xmlDic = new Dictionary();
        var _loc1_:Class = null;
        var _loc2_:Class = null;
        var _loc3_:Class = null;
        var _loc4_:Class = null;
        var _loc5_:Class = null;
        var _loc6_:Class = null;
        var _loc7_:Class = null;
        _loc1_ = GetDataXML_XMLBuilding;
        _loc2_ = GetDataXML_XMLCastleLogo;
        _loc3_ = GetDataXML_XMLFort;
        _loc4_ = GetDataXML_XMLItem;
        _loc5_ = GetDataXML_XMLPlayerLogo;
        _loc6_ = GetDataXML_XMLTech;
        _loc7_ = GetDataXML_XMLTroop;
        this.xmlDic["XMLBuilding"] = new XMLDocument(new _loc1_());
        this.xmlDic["XMLCastleLogo"] = new XMLDocument(new _loc2_());
        this.xmlDic["XMLFort"] = new XMLDocument(new _loc3_());
        this.xmlDic["XMLItem"] = new XMLDocument(new _loc4_());
        this.xmlDic["XMLPlayerLogo"] = new XMLDocument(new _loc5_());
        this.xmlDic["XMLTech"] = new XMLDocument(new _loc6_());
        this.xmlDic["XMLTroop"] = new XMLDocument(new _loc7_());
    }

    public var strLanguage:String = "English";
    private var xmlDoc:XMLDocument;
    private var xmlDic:Dictionary;

    public function getXMLDoc(param1:String):XMLDocument {
        switch (param1) {
            case "BuildingEumDefine":
                this.xmlDoc = this.xmlDic["XMLBuilding"];
                break;
            case "CityLogoEumDefine":
                this.xmlDoc = this.xmlDic["XMLCastleLogo"];
                break;
            case "FortificationEumDefine":
                this.xmlDoc = this.xmlDic["XMLFort"];
                break;
            case "ItemEumDefine":
                this.xmlDoc = this.xmlDic["XMLItem"];
                break;
            case "LogoEumDefine":
                this.xmlDoc = this.xmlDic["XMLPlayerLogo"];
                break;
            case "TechEumDefine":
                this.xmlDoc = this.xmlDic["XMLTech"];
                break;
            case "TroopEumDefine":
                this.xmlDoc = this.xmlDic["XMLTroop"];
                break;
        }
        return this.xmlDoc;
    }
}
}
