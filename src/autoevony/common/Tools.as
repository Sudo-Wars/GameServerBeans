package autoevony.common {
import com.evony.eum.BuildingEum;
import com.evony.eum.BuildingEumDefine;
import com.evony.eum.BuildingLevelData;
import com.evony.eum.TechEum;
import com.evony.eum.TechEumDefine;
import com.evony.eum.TechLevelData;

import mx.formatters.NumberFormatter;
import mx.utils.StringUtil;

public class Tools extends Object {

    private static var paramRegExp:RegExp = new RegExp("^(.*?)(([=:_])(.*))?$");

    public static function FormatNumber(param1:Number, param2:int = 0, param3:Boolean = true):String {
        var _loc4_:NumberFormatter = new NumberFormatter();
        _loc4_.precision = param2;
        _loc4_.useThousandsSeparator = param3;
        return _loc4_.format(param1);
    }

    public static function GetBuildingLevelData(param1:int, param2:int):BuildingLevelData {
        var _loc3_:BuildingEum = GetBuildingData(param1);
        return _loc3_ ? _loc3_.getLevelData(param2) : null;
    }

    public static function FormatMiles(param1:Number):String {
        return FormatNumber(param1, 2) + " miles";
    }

    public static function GetResearchData(param1:int):TechEum {
        return TechEumDefine.getTechEumByType(param1);
    }

    public static function ToCSV(...rest):String {
        return "\"" + rest.join("\",\"") + "\"";
    }

    public static function LeftPad(param1:String, param2:int, param3:String = " "):String {
        var param2:int = param2 - param1.length;
        return param2 < 0 ? param1.substr(0, param2) : StringRepeat(param2, param3) + param1;
    }

    public static function FormatPercent(param1:Number, param2:int = 1):String {
        return FormatNumber(param1 * 100, param2) + "%";
    }

    public static function Upper1(param1:String):String {
        return param1 ? param1.substr(0, 1).toUpperCase() + param1.substr(1) : "";
    }

    public static function StringToObject(param1:String, param2:Object, param3:String, param4:Object = null):Object {
        var _loc5_:String = null;
        var _loc6_:* = 0;
        var _loc7_:String = null;
        var _loc8_:String = null;
        if (param4 == null) {
            var param4:Object = new Object();
        }
        if (param1) {
            for each(_loc5_ in param1.split(param2)) {
                _loc6_ = _loc5_.indexOf(param3);
                if (_loc6_ > 0) {
                    _loc7_ = StringUtil.trim(_loc5_.substring(0, _loc6_)).toLowerCase();
                    _loc8_ = StringUtil.trim(_loc5_.substring(_loc6_ + param3.length));
                    param4[_loc7_] = Merge(param4[_loc7_], _loc8_, "\n");
                }
            }
        }
        return param4;
    }

    public static function StringRepeat(param1:int, param2:String = " "):String {
        var _loc3_:* = "";
        while (param1 > 0) {
            _loc3_ = _loc3_ + param2;
            param1--;
        }
        return _loc3_;
    }

    public static function GetBuildingData(param1:int):BuildingEum {
        return BuildingEumDefine.getBuildingEumByType(param1);
    }

    public static function GetResearchLevelData(param1:int, param2:int):TechLevelData {
        var _loc3_:TechEum = GetResearchData(param1);
        return _loc3_ ? _loc3_.getLevelData(param2) : null;
    }

    public static function RightPad(param1:String, param2:int, param3:String = " "):String {
        var param2:int = param2 - param1.length;
        return param2 < 0 ? param1.substr(0, param2) : param1 + StringRepeat(param2, param3);
    }

    public static function Merge(param1:String, param2:String, param3:String = " "):String {
        return (param1 == null ? "" : param1) + ((param1) && (param2) && (param3) ? param3 : "") + (param2 == null ? "" : param2);
    }

    public static function FormatNumber2(param1:Number, param2:Boolean = true):String {
        return FormatNumber(param1, 2, param2);
    }

    public static function PluralEng(param1:String, param2:int, param3:String = null):String {
        return (param2 == 0 && (param3) ? param3 : param2) + " " + param1 + (param2 == 1 ? "" : "s");
    }

    public static function ObjectIsEmpty(param1:Object):Boolean {
        var _loc2_:String = null;
        if (param1) {
            for (_loc2_ in param1) {
                return false;
            }
        }
        return true;
    }

    public static function ParseParameters(param1:Object, param2:Array, param3:Boolean = true, param4:String = "/-", param5:Array = null, param6:Object = null):Array {
        var _loc7_:String = null;
        var _loc8_:* = 0;
        var _loc11_:String = null;
        var _loc12_:Object = null;
        var _loc13_:String = null;
        var _loc9_:String = null;
        var _loc10_:* = 0;
        while (_loc10_ < param2.length) {
            _loc11_ = param2[_loc10_];
            if (_loc9_) {
                _loc7_ = _loc11_;
            }
            else if (param4.indexOf(_loc11_.substr(0, 1)) >= 0) {
                _loc11_ = _loc11_.substr(1);
                _loc12_ = paramRegExp.exec(_loc11_);
                if (_loc12_) {
                    _loc13_ = _loc12_[1];
                    if (_loc13_) {
                        _loc13_ = _loc13_.toLowerCase();
                        if ((param6) && _loc13_ in param6) {
                            _loc13_ = param6[_loc13_];
                        }
                        if (!param3 || _loc13_ in param1) {
                            _loc9_ = _loc13_;
                            _loc8_ = _loc10_;
                            _loc7_ = _loc12_[4];
                            if (_loc7_ == "") {
                                _loc7_ = null;
                            }
                        }
                    }
                }
            }

            _loc10_++;
            if ((_loc9_) && !(_loc7_ == null)) {
                param1[_loc9_] = _loc7_;
                param2.splice(_loc8_, _loc10_ - _loc8_);
                _loc10_ = _loc8_;
                _loc9_ = null;
            }
        }
        if (param5) {
            for each(_loc9_ in param5) {
                if (param2.length == 0) {
                    break;
                }
                if (!(_loc9_ in param1)) {
                    param1[_loc9_] = param2.shift();
                }
            }
        }
        return param2;
    }

    public static function CenterPad(param1:String, param2:int, param3:String = " "):String {
        var param2:int = param2 - param1.length;
        return param2 < 0 ? param1.substr(0, param2) : StringRepeat(param2 >> 1, param3) + param1 + StringRepeat(param2 - (param2 >> 1), param3);
    }

    public function Tools() {
        super();
    }
}
}
