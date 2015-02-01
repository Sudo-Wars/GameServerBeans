package autoevony.common {
import mx.controls.advancedDataGridClasses.AdvancedDataGridColumn;
import mx.formatters.NumberFormatter;
import mx.utils.StringUtil;

public class Utils extends Object {

    public static const NumberSuffixes:String = "%kmbt";
    protected static const reIsNum:RegExp = new RegExp("^[+-]?([0-9]+(\\.[0-9]+)?|\\.[0-9]+)$");
    protected static const reIsNumMagnified:RegExp = new RegExp("^[+-]?[0-9]+(\\.[0-9]+)?[kmgbtqp]", "i");
    protected static const reIsIntRange:RegExp = new RegExp("^[+-]?[0-9]+(-|\\.\\.)[+-]?[0-9]+?$");
    protected static const reIsInt:RegExp = new RegExp("^[+-]?[0-9]+$");
    protected static const reIsNumRange:RegExp = new RegExp("^[+-]?[0-9]+(\\.[0-9]+)?(-|\\.\\.)][+-]?[0-9]+(\\.[0-9]+)?$");

    public static function FormatNumP(param1:Number):String {
        return param1 <= 0 ? "" : FormatNum(param1);
    }

    public static function isNumeric(param1:String):Boolean {
        return !isNaN(parseFloat(param1));
    }

    public static function FormatTime(param1:Number):String {
        var _loc3_:* = 0;
        var _loc4_:* = 0;
        var _loc5_:* = 0;
        var _loc6_:* = 0;
        var _loc2_:int = int(param1 / 3600 / 24 / 365);
        if (_loc2_ == 1) {
            return "More than a year";
        }
        if (_loc2_ > 1) {
            return "More than " + _loc2_ + " years";
        }
        _loc3_ = int(param1 / 3600 / 24);
        _loc4_ = int(param1 / 3600) % 24;
        _loc5_ = int(param1 / 60) % 60;
        _loc6_ = param1 % 60;
        if (_loc3_ > 0) {
            return _loc3_ + "d:" + _loc4_ + "h:" + Format2(_loc5_) + "m:" + Format2(_loc6_);
        }
        if (_loc4_ > 0) {
            return _loc4_ + "h:" + Format2(_loc5_) + "m:" + Format2(_loc6_);
        }
        return Format2(_loc5_) + "m:" + Format2(_loc6_);
    }

    public static function Rand(param1:int, param2:int):int {
        return param1 + Math.random() * (param2 - param1);
    }

    public static function parseFloatS(param1:String):Number {
        return isNumber(param1) ? parseFloat(param1) : NaN;
    }

    public static function Format3(param1:int, param2:String = " "):String {
        return Tools.LeftPad(param1.toString(), 3, param2);
    }

    public static function ToBoolean(param1:String):Boolean {
        return param1 == "yes" || param1 == "on" || param1 == "true" || param1 == "1";
    }

    public static function getSortableDateString(param1:Number):String {
        var _loc2_:Date = new Date(param1);
        return Format2(_loc2_.getMonth() + 1) + "-" + Format2(_loc2_.getDate()) + " " + Format2(_loc2_.hours) + ":" + Format2(_loc2_.minutes) + ":" + Format2(_loc2_.seconds);
    }

    public static function Ends(param1:String, param2:String):Boolean {
        return !(param1 == null) && !(param2 == null) && param1.substr(-param2.length, param2.length) == param2;
    }

    public static function isNumber(param1:String):Boolean {
        return param1.search(reIsNum) >= 0;
    }

    public static function isNumMagnified(param1:String):Boolean {
        return param1.search(reIsNumMagnified) >= 0;
    }

    public static function SetVars(param1:Object, param2:String):void {
        var _loc3_:String = null;
        var _loc4_:* = 0;
        if (param2 != null) {
            _loc3_ = "";
            _loc4_ = param2.indexOf(" ");
            if (_loc4_ != -1) {
                _loc3_ = StringUtil.trim(param2.substr(_loc4_ + 1));
                var param2:String = param2.substr(0, _loc4_);
            }
            if (param2) {
                param1[param2.toLowerCase()] = _loc3_;
            }
        }
    }

    public static function isIntRange(param1:String):Boolean {
        return param1.search(reIsIntRange) >= 0;
    }

    public static function GetSwitch(param1:Array, param2:String):Boolean {
        var _loc3_:String = param1 ? param1[0] : null;
        if (!(_loc3_ == null) && _loc3_.toLowerCase() == "/" + param2) {
            param1.shift();
            return true;
        }
        return false;
    }

    public static function StripDotZeros(param1:String):String {
        if (param1 != null) {
            while (param1.substr(-1, 1) == "0") {
                var param1:String = param1.substr(0, param1.length - 1);
            }
            if (param1.substr(-1, 1) == ".") {
                param1 = param1.substr(0, param1.length - 1);
            }
        }
        return param1;
    }

    public static function FormatHM(param1:int, param2:int):String {
        return Format2(param1) + ":" + Format2(param2);
    }

    public static function ToPreciseTimeString(param1:Number):String {
        var _loc2_:Date = new Date(param1);
        return Format2(_loc2_.hours) + ":" + Format2(_loc2_.minutes) + ":" + Format2(_loc2_.seconds) + "." + Format3(_loc2_.getMilliseconds(), "0");
    }

    public static function AdjustNumber(param1:String, param2:Boolean = true):Number {
        var _loc3_:int = NumberSuffixes.indexOf(param1.substr(-1).toLowerCase());
        if (_loc3_ >= 0) {
            var param1:String = param1.substr(0, param1.length - 1);
        }
        var _loc4_:Number = parseFloatS(param1);
        if (!isNaN(_loc4_)) {
            if (_loc3_ == 0) {
                _loc4_ = _loc4_ / 100;
            }
            else {
                while (_loc3_ > 0) {
                    _loc4_ = _loc4_ * 1000;
                    _loc3_--;
                }
            }
            if (param2) {
                _loc4_ = Math.floor(_loc4_);
            }
        }
        return _loc4_;
    }

    public static function ReplaceVars(param1:Object, param2:String):String {
        var _loc5_:String = null;
        var _loc6_:String = null;
        var _loc3_:Array = param2.split("%");
        var _loc4_:* = 1;
        while (_loc4_ < _loc3_.length) {
            _loc5_ = _loc3_[_loc4_];
            _loc6_ = _loc5_.toLowerCase();
            if (_loc6_ in param1) {
                _loc3_[_loc4_] = param1[_loc6_];
                _loc4_++;
            }
            else {
                _loc3_[_loc4_] = "%" + _loc5_;
            }
            _loc4_++;
        }
        return _loc3_.join("");
    }

    public static function isNumRange(param1:String):Boolean {
        return param1.search(reIsNumRange) >= 0;
    }

    public static function Quote(param1:String):String {
        return "\"" + (param1 == null ? "" : param1.replace(new RegExp("\\\"", "g"), "\\\"")) + "\"";
    }

    public static function isInt(param1:String):Boolean {
        return param1.search(reIsInt) >= 0;
    }

    public static function trim(param1:String):String {
        var _loc2_:* = 0;
        while (_loc2_ < param1.length && param1.charCodeAt(_loc2_) < 33) {
            _loc2_++;
        }
        var _loc3_:int = param1.length - 1;
        while (_loc3_ > _loc2_ && param1.charCodeAt(_loc3_) < 33) {
            _loc3_--;
        }
        return param1.substring(_loc2_, _loc3_ + 1);
    }

    public static function commaFormat(param1:Object, param2:AdvancedDataGridColumn):String {
        var _loc3_:NumberFormatter = new NumberFormatter();
        _loc3_.precision = 0;
        _loc3_.useThousandsSeparator = true;
        return _loc3_.format(param1[param2.dataField]);
    }

    public static function FormatTime1(param1:Number):String {
        var _loc2_:int = int(param1 / 3600 / 24 / 365);
        var _loc3_:int = int(param1 / 3600 / 24);
        var _loc4_:int = int(param1 / 3600) % 24;
        var _loc5_:int = int(param1 / 3600 / 24 - 365);
        var _loc6_:int = int(param1 / 3600 / 24 - _loc2_ * 365);
        var _loc7_:int = int(param1 / 60) % 60;
        var _loc8_:int = param1 % 60;
        if (_loc2_ == 1) {
            return "Y:" + _loc2_ + " D:" + _loc5_ + " H:" + _loc4_ + " M:" + Format2(_loc7_) + " S:" + Format2(_loc8_);
        }
        if (_loc2_ > 1) {
            return "Years:" + _loc2_ + " D:" + _loc6_ + " H:" + _loc4_ + " M:" + Format2(_loc7_) + " S:" + Format2(_loc8_);
        }
        if (_loc3_ > 0) {
            return "D:" + _loc3_ + " H:" + _loc4_ + " M:" + Format2(_loc7_) + " S:" + Format2(_loc8_);
        }
        if (_loc4_ > 0) {
            return "H:" + _loc4_ + " M:" + Format2(_loc7_) + " S:" + Format2(_loc8_);
        }
        if (_loc4_ < 0) {
            return "M:" + Format2(_loc7_) + " S:" + Format2(_loc8_);
        }
        if (_loc7_ < 1) {
            return "S:" + Format2(_loc8_);
        }
        return Format2(_loc7_) + "minutes:" + Format2(_loc8_) + "seconds";
    }

    public static function FormatNum(param1:Number, param2:Boolean = true):String {
        var _loc5_:* = 0;
        var _loc3_:* = param1 < 0;
        if (_loc3_) {
            var param1:Number = -param1;
        }
        var _loc4_:* = "";
        if (param1 >= 1000000) {
            _loc5_ = 1;
            while (_loc5_ < NumberSuffixes.length) {
                _loc4_ = NumberSuffixes.substr(_loc5_, 1);
                param1 = param1 / 1000;
                if (param1 < 1000) {
                    break;
                }
                _loc5_++;
            }
            _loc4_ = StripDotZeros(Tools.FormatNumber(param1, 2, param2)) + _loc4_;
        }
        else {
            _loc4_ = Tools.FormatNumber(param1, 0, param2);
        }
        return (_loc3_ ? "-" : "") + _loc4_;
    }

    public static function GetStringBetween(param1:String, param2:String, param3:String):String {
        var _loc4_:int = param1.indexOf(param2);
        if (_loc4_ == -1) {
            return null;
        }
        _loc4_ = _loc4_ + param2.length;
        var _loc5_:int = param1.indexOf(param3, _loc4_);
        if (_loc5_ == -1) {
            return null;
        }
        return param1.substring(_loc4_, _loc5_);
    }

    public static function Starts(param1:String, param2:String):Boolean {
        return !(param1 == null) && !(param2 == null) && param1.substr(0, param2.length) == param2;
    }

    public static function GetParm(param1:Array, param2:String):String {
        return (param1) && param1.length > 0 ? param1.shift() : param2;
    }

    public static function FormatHMS(param1:int, param2:int, param3:int):String {
        if (param1 >= 0 && param2 >= 0 && param3 >= 0) {
            return Format2(param1) + ":" + Format2(param2) + ":" + Format2(param3);
        }
        return null;
    }

    public static function ParseInteger(param1:String, param2:int, param3:int = 2.147483647E9, param4:String = null):int {
        if (param1 == null) {
            return param2 - 1;
        }
        if (param4 == null) {
            var param1:String = param1.toLowerCase();
            if (param2 == 0 && (param1 == "no" || param1 == "off" || param1 == "false")) {
                return 0;
            }
            if (param3 == 1 && (param1 == "yes" || param1 == "on" || param1 == "true")) {
                return 1;
            }
        }
        else if (Ends(param1, param4)) {
            param1 = param1.substr(0, param1.length - param4.length);
        }
        else {
            return param2 - 1;
        }

        var _loc5_:Number = isInt(param1) ? parseInt(param1) : NaN;
        if ((isNaN(_loc5_)) || _loc5_ < param2 || _loc5_ > param3) {
            return param2 - 1;
        }
        return _loc5_;
    }

    public static function ParseHMS(param1:String, param2:int = 0):String {
        var _loc4_:* = 0;
        var _loc5_:* = 0;
        var _loc6_:* = 0;
        var _loc3_:Array = param1 == null ? null : param1.split(":", 3);
        if ((_loc3_) && _loc3_.length >= 2) {
            _loc4_ = ParseInteger(_loc3_[0], 0, 23);
            _loc5_ = ParseInteger(_loc3_[1], 0, 59);
            _loc6_ = _loc3_.length < 3 ? param2 : ParseInteger(_loc3_[2], 0, 59);
            return FormatHMS(_loc4_, _loc5_, _loc6_);
        }
        return null;
    }

    public static function ParseNumber(param1:String, param2:Number = NaN, param3:Number = NaN):Number {
        if (param1 == null) {
            return NaN;
        }
        var param1:String = param1.toLowerCase();
        if (param2 == 0 && (param1 == "no" || param1 == "off" || param1 == "false")) {
            return 0;
        }
        if (param3 == 1 && (param1 == "yes" || param1 == "on" || param1 == "true")) {
            return 1;
        }
        var _loc4_:Number = parseFloatS(param1);
        if ((isNaN(_loc4_)) || !isNaN(param2) && _loc4_ < param2 || !isNaN(param3) && _loc4_ > param3) {
            return NaN;
        }
        return _loc4_;
    }

    private static function Format2(param1:int):String {
        if (param1 < 10) {
            return "0" + param1;
        }
        return "" + param1;
    }

    public function Utils() {
        super();
    }
}
}
