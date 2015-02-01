package autoevony.common {
import com.evony.common.beans.ResourceBean;

public class ResourceType extends Object {

    public static const ResourceNames:Array = ["food", "lumber", "stone", "iron"];
    public static const TRADE_TYPE_BUY:int = 0;
    public static const RES_TYPE_FOOD:int = 0;
    public static const RES_TYPE_GOLD:int = 4;
    public static const RES_TYPE_WOOD:int = 1;
    public static const TAXATION_GOLD:int = 1;
    public static const ResourceAbbr:Array = ["f", "w", "s", "i", "g"];
    public static const TAXATION_FOOD:int = 2;
    public static const RES_TYPE_STONE:int = 2;
    public static const TradeTypes:Array = ["buy", "sell"];
    public static const ResourceIntNames:Array = ["food", "wood", "stone", "iron", "gold"];
    public static const TAXATION_WOOD:int = 3;
    public static const RES_TYPE_IRON:int = 3;
    public static const TAXATION_STONE:int = 4;
    public static const TAXATION_TYPES:Array = [null, "gold", "food", "wood", "stone", "iron"];
    public static const TRADE_TYPE_SELL:int = 1;
    public static const TAXATION_IRON:int = 5;

    public static function get marketSize():int {
        return ResourceNames.length;
    }

    public static function GetResources(param1:String, param2:Boolean = false):ResourceBean {
        var _loc5_:* = 0;
        var _loc6_:* = NaN;
        var _loc7_:String = null;
        var _loc8_:Array = null;
        var _loc9_:String = null;
        var _loc10_:String = null;
        var _loc3_:Array = param1 == null ? [] : param1.split(",");
        if (_loc3_.length < 1) {
            return null;
        }
        var _loc4_:ResourceBean = new ResourceBean();
        while (true) {
            for each(_loc7_ in _loc3_) {
                _loc8_ = _loc7_.split(":");
                if (_loc8_.length != 2) {
                    return null;
                }
                _loc9_ = _loc8_[0];
                switch (_loc9_.toLowerCase()) {
                    case "g":
                    case "gold":
                        _loc5_ = RES_TYPE_GOLD;
                        break;
                    case "w":
                    case "wood":
                    case "l":
                    case "lumber":
                        _loc5_ = RES_TYPE_WOOD;
                        break;
                    case "i":
                    case "iron":
                        _loc5_ = RES_TYPE_IRON;
                        break;
                    case "s":
                    case "stone":
                        _loc5_ = RES_TYPE_STONE;
                        break;
                    case "f":
                    case "food":
                        _loc5_ = RES_TYPE_FOOD;
                        break;
                    default:
                        return null;
                }
                if (_loc4_.resOrder.indexOf(_loc5_) >= 0) {
                    break;
                }
                _loc10_ = _loc8_[1];
                if ((param2) && _loc10_ == "*") {
                    _loc6_ = -1;
                }
                else {
                    _loc6_ = Utils.AdjustNumber(_loc10_);
                    if ((isNaN(_loc6_)) || _loc6_ < 0) {
                        return null;
                    }
                }
                _loc4_.resOrder.push(_loc5_);
                _loc4_[ResourceIntNames[_loc5_]] = _loc6_;
            }
            return _loc4_;
        }
        return null;
    }

    public function ResourceType() {
        super();
    }
}
}
