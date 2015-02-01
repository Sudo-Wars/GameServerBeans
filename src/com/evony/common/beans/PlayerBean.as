package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class PlayerBean extends Object implements IEventDispatcher {

    public function PlayerBean(param1:Object = null) {
        var _loc2_:Object = null;
        var _loc3_:BuffBean = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.packageBeanArray = new ArrayCollection();
        this.itemsArray = new ArrayCollection();
        this.buffs = new Object();
        this.castlesArray = new ArrayCollection();
        this.enemyArmysArray = new ArrayCollection();
        this.saleItemBeansArray = new ArrayCollection();
        this.friendBeansArray = new ArrayCollection();
        this.saleTypeBeansArray = new ArrayCollection();
        this.friendArmysArray = new ArrayCollection();
        this.selfArmysArray = new ArrayCollection();
        this.castleSignBeanArray = new ArrayCollection();
        this.blockBeansArray = new ArrayCollection();
        if (param1) {
            if (param1.newReportCount != null) {
                this.newReportCount = param1.newReportCount;
            }
            if (param1.packageBean) {
                for each(_loc2_ in param1.packageBean) {
                    this.packageBeanArray.addItem(new PackageBean(_loc2_));
                }
            }
            if (param1.tutorialStepId != null) {
                this.tutorialStepId = param1.tutorialStepId;
            }
            if (param1.items) {
                for each(_loc2_ in param1.items) {
                    this.itemsArray.addItem(new ItemBean(_loc2_));
                }
            }
            if (param1.changedFace != null) {
                this.changedFace = param1.changedFace;
            }
            if (param1.isSetSecurityCode != null) {
                this.isSetSecurityCode = param1.isSetSecurityCode;
            }
            if (param1.furlough != null) {
                this.furlough = param1.furlough;
            }
            if (param1.redCount != null) {
                this.redCount = param1.redCount;
            }
            if (param1.buffs) {
                for each(_loc2_ in param1.buffs) {
                    _loc3_ = new BuffBean(_loc2_);
                    this.buffs[_loc3_.typeId] = _loc3_;
                }
            }
            if (param1.castles) {
                for each(_loc2_ in param1.castles) {
                    this.castlesArray.addItem(new CastleBean(_loc2_));
                }
            }
            if (param1.autoFurlough != null) {
                this.autoFurlough = param1.autoFurlough;
            }
            if (param1.mapSizeX != null) {
                this.mapSizeX = param1.mapSizeX;
            }
            if (param1.enemyArmys) {
                for each(_loc2_ in param1.enemyArmys) {
                    this.enemyArmysArray.addItem(new ArmyBean(_loc2_));
                }
            }
            if (param1.mapSizeY != null) {
                this.mapSizeY = param1.mapSizeY;
            }
            if (param1.furloughDay != null) {
                this.furloughDay = param1.furloughDay;
            }
            if (param1.finishedQuestCount != null) {
                this.finishedQuestCount = param1.finishedQuestCount;
            }
            if (param1.saleItemBeans) {
                for each(_loc2_ in param1.saleItemBeans) {
                    this.saleItemBeansArray.addItem(new SaleItemBean(_loc2_));
                }
            }
            if (param1.gameSpeed != null) {
                this.gameSpeed = param1.gameSpeed;
            }
            if (param1.newReportCount_army != null) {
                this.newReportCount_army = param1.newReportCount_army;
            }
            if (param1.friendBeans) {
                for each(_loc2_ in param1.friendBeans) {
                    this.friendBeansArray.addItem(new PlayerInfoBean(_loc2_));
                }
            }
            if (param1.saleTypeBeans) {
                for each(_loc2_ in param1.saleTypeBeans) {
                    this.saleTypeBeansArray.addItem(new SaleTypeBean(_loc2_));
                }
            }
            if (param1.newMailCount != null) {
                this.newMailCount = param1.newMailCount;
            }
            if (param1.friendArmys) {
                for each(_loc2_ in param1.friendArmys) {
                    this.friendArmysArray.addItem(new ArmyBean(_loc2_));
                }
            }
            if (param1.newReportCount_other != null) {
                this.newReportCount_other = param1.newReportCount_other;
            }
            if (param1.selfArmys) {
                for each(_loc2_ in param1.selfArmys) {
                    this.selfArmysArray.addItem(new ArmyBean(_loc2_));
                }
            }
            if (param1.currentDateTime != null) {
                this.currentDateTime = param1.currentDateTime;
            }
            if (param1.freshMan != null) {
                this.freshMan = param1.freshMan;
            }
            if (param1.gamblingItemIndex != null) {
                this.gamblingItemIndex = param1.gamblingItemIndex;
            }
            if (param1.currentTime != null) {
                this.currentTime = param1.currentTime;
            }
            if (param1.castleSignBean) {
                for each(_loc2_ in param1.castleSignBean) {
                    this.castleSignBeanArray.addItem(new CastleSignInfoBean(_loc2_));
                }
            }
            if (param1.newReportCount_trade != null) {
                this.newReportCount_trade = param1.newReportCount_trade;
            }
            if (param1.blockBeans) {
                for each(_loc2_ in param1.blockBeans) {
                    this.blockBeansArray.addItem(new PlayerInfoBean(_loc2_));
                }
            }
            if (param1.newMaileCount_inbox != null) {
                this.newMaileCount_inbox = param1.newMaileCount_inbox;
            }
            if (param1.playerInfo != null) {
                this.playerInfo = new PlayerInfoBean(param1.playerInfo);
            }
            if (param1.newMaileCount_system != null) {
                this.newMaileCount_system = param1.newMaileCount_system;
            }
        }
    }

    private var _230483579newReportCount:int;
    private var _117401885packageBeanArray:ArrayCollection;
    private var _1081550341tutorialStepId:int;
    private var _1425640839itemsArray:ArrayCollection;
    private var _1651231951changedFace:Boolean;
    private var _165283771isSetSecurityCode:Boolean;
    private var _1503629328furlough:Boolean;
    private var _902435682castlesArray:ArrayCollection;
    private var _811312386redCount:int;
    private var _1378032427enemyArmysArray:ArrayCollection;
    private var _1329771231autoFurlough:Boolean;
    private var _167675003mapSizeX:int;
    private var _167675004mapSizeY:int;
    private var _1887518356furloughDay:int;
    private var _1432206175finishedQuestCount:int;
    private var _1102495504saleItemBeansArray:ArrayCollection;
    private var _989948789gameSpeed:int;
    private var _2041542881newReportCount_army:int;
    private var _925069225saleTypeBeansArray:ArrayCollection;
    private var _1918704276friendBeansArray:ArrayCollection;
    private var _29843496newMailCount:int;
    private var _859583983selfArmysArray:ArrayCollection;
    private var _1123696564newReportCount_other:int;
    private var _704639681friendArmysArray:ArrayCollection;
    private var _248723404currentDateTime:String;
    private var _1524843188freshMan:Boolean;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1484814694gamblingItemIndex:int;
    private var _601235430currentTime:Number;
    private var _675024588castleSignBeanArray:ArrayCollection;
    private var _1461815869blockBeansArray:ArrayCollection;
    private var _1119145312newReportCount_trade:int;
    private var _2095520559playerInfo:PlayerInfoBean;
    private var _2026418520newMaileCount_inbox:int;
    private var _94091904buffs:Object;
    private var _1902496333newMaileCount_system:int;

    public function get tutorialStepId():int {
        return this._1081550341tutorialStepId;
    }

    public function set tutorialStepId(param1:int):void {
        var _loc2_:Object = this._1081550341tutorialStepId;
        if (_loc2_ !== param1) {
            this._1081550341tutorialStepId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tutorialStepId", _loc2_, param1));
        }
    }

    public function get selfArmysArray():ArrayCollection {
        return this._859583983selfArmysArray;
    }

    public function set selfArmysArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._859583983selfArmysArray;
        if (_loc2_ !== param1) {
            this._859583983selfArmysArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selfArmysArray", _loc2_, param1));
        }
    }

    public function get furlough():Boolean {
        return this._1503629328furlough;
    }

    public function set furlough(param1:Boolean):void {
        var _loc2_:Object = this._1503629328furlough;
        if (_loc2_ !== param1) {
            this._1503629328furlough = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "furlough", _loc2_, param1));
        }
    }

    public function get saleItemBeansArray():ArrayCollection {
        return this._1102495504saleItemBeansArray;
    }

    public function set saleItemBeansArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1102495504saleItemBeansArray;
        if (_loc2_ !== param1) {
            this._1102495504saleItemBeansArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "saleItemBeansArray", _loc2_, param1));
        }
    }

    public function get enemyArmysArray():ArrayCollection {
        return this._1378032427enemyArmysArray;
    }

    public function set enemyArmysArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1378032427enemyArmysArray;
        if (_loc2_ !== param1) {
            this._1378032427enemyArmysArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "enemyArmysArray", _loc2_, param1));
        }
    }

    public function get changedFace():Boolean {
        return this._1651231951changedFace;
    }

    public function set changedFace(param1:Boolean):void {
        var _loc2_:Object = this._1651231951changedFace;
        if (_loc2_ !== param1) {
            this._1651231951changedFace = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "changedFace", _loc2_, param1));
        }
    }

    public function get playerInfo():PlayerInfoBean {
        return this._2095520559playerInfo;
    }

    public function set playerInfo(param1:PlayerInfoBean):void {
        var _loc2_:Object = this._2095520559playerInfo;
        if (_loc2_ !== param1) {
            this._2095520559playerInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerInfo", _loc2_, param1));
        }
    }

    public function get currentDateTime():String {
        return this._248723404currentDateTime;
    }

    public function set currentDateTime(param1:String):void {
        var _loc2_:Object = this._248723404currentDateTime;
        if (_loc2_ !== param1) {
            this._248723404currentDateTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "currentDateTime", _loc2_, param1));
        }
    }

    public function get isSetSecurityCode():Boolean {
        return this._165283771isSetSecurityCode;
    }

    public function set isSetSecurityCode(param1:Boolean):void {
        var _loc2_:Object = this._165283771isSetSecurityCode;
        if (_loc2_ !== param1) {
            this._165283771isSetSecurityCode = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isSetSecurityCode", _loc2_, param1));
        }
    }

    public function get newReportCount_other():int {
        return this._1123696564newReportCount_other;
    }

    public function set newReportCount_other(param1:int):void {
        var _loc2_:Object = this._1123696564newReportCount_other;
        if (_loc2_ !== param1) {
            this._1123696564newReportCount_other = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newReportCount_other", _loc2_, param1));
        }
    }

    public function get freshMan():Boolean {
        return this._1524843188freshMan;
    }

    public function set freshMan(param1:Boolean):void {
        var _loc2_:Object = this._1524843188freshMan;
        if (_loc2_ !== param1) {
            this._1524843188freshMan = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "freshMan", _loc2_, param1));
        }
    }

    public function get newMaileCount_system():int {
        return this._1902496333newMaileCount_system;
    }

    public function set newMaileCount_system(param1:int):void {
        var _loc2_:Object = this._1902496333newMaileCount_system;
        if (_loc2_ !== param1) {
            this._1902496333newMaileCount_system = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newMaileCount_system", _loc2_, param1));
        }
    }

    public function get saleTypeBeansArray():ArrayCollection {
        return this._925069225saleTypeBeansArray;
    }

    public function set saleTypeBeansArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._925069225saleTypeBeansArray;
        if (_loc2_ !== param1) {
            this._925069225saleTypeBeansArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "saleTypeBeansArray", _loc2_, param1));
        }
    }

    public function get finishedQuestCount():int {
        return this._1432206175finishedQuestCount;
    }

    public function set finishedQuestCount(param1:int):void {
        var _loc2_:Object = this._1432206175finishedQuestCount;
        if (_loc2_ !== param1) {
            this._1432206175finishedQuestCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "finishedQuestCount", _loc2_, param1));
        }
    }

    public function get furloughDay():int {
        return this._1887518356furloughDay;
    }

    public function set furloughDay(param1:int):void {
        var _loc2_:Object = this._1887518356furloughDay;
        if (_loc2_ !== param1) {
            this._1887518356furloughDay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "furloughDay", _loc2_, param1));
        }
    }

    public function get castleSignBeanArray():ArrayCollection {
        return this._675024588castleSignBeanArray;
    }

    public function set castleSignBeanArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._675024588castleSignBeanArray;
        if (_loc2_ !== param1) {
            this._675024588castleSignBeanArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "castleSignBeanArray", _loc2_, param1));
        }
    }

    public function get gameSpeed():int {
        return this._989948789gameSpeed;
    }

    public function set gameSpeed(param1:int):void {
        var _loc2_:Object = this._989948789gameSpeed;
        if (_loc2_ !== param1) {
            this._989948789gameSpeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gameSpeed", _loc2_, param1));
        }
    }

    public function get itemsArray():ArrayCollection {
        return this._1425640839itemsArray;
    }

    public function set itemsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1425640839itemsArray;
        if (_loc2_ !== param1) {
            this._1425640839itemsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemsArray", _loc2_, param1));
        }
    }

    public function get mapSizeX():int {
        return this._167675003mapSizeX;
    }

    public function set mapSizeX(param1:int):void {
        var _loc2_:Object = this._167675003mapSizeX;
        if (_loc2_ !== param1) {
            this._167675003mapSizeX = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapSizeX", _loc2_, param1));
        }
    }

    public function get mapSizeY():int {
        return this._167675004mapSizeY;
    }

    public function set mapSizeY(param1:int):void {
        var _loc2_:Object = this._167675004mapSizeY;
        if (_loc2_ !== param1) {
            this._167675004mapSizeY = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mapSizeY", _loc2_, param1));
        }
    }

    public function get buffs():Object {
        return this._94091904buffs;
    }

    public function set buffs(param1:Object):void {
        var _loc2_:Object = this._94091904buffs;
        if (_loc2_ !== param1) {
            this._94091904buffs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buffs", _loc2_, param1));
        }
    }

    public function get newReportCount():int {
        return this._230483579newReportCount;
    }

    public function set newReportCount(param1:int):void {
        var _loc2_:Object = this._230483579newReportCount;
        if (_loc2_ !== param1) {
            this._230483579newReportCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newReportCount", _loc2_, param1));
        }
    }

    public function get friendBeansArray():ArrayCollection {
        return this._1918704276friendBeansArray;
    }

    public function set friendBeansArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1918704276friendBeansArray;
        if (_loc2_ !== param1) {
            this._1918704276friendBeansArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "friendBeansArray", _loc2_, param1));
        }
    }

    public function get newReportCount_trade():int {
        return this._1119145312newReportCount_trade;
    }

    public function set newReportCount_trade(param1:int):void {
        var _loc2_:Object = this._1119145312newReportCount_trade;
        if (_loc2_ !== param1) {
            this._1119145312newReportCount_trade = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newReportCount_trade", _loc2_, param1));
        }
    }

    public function get gamblingItemIndex():int {
        return this._1484814694gamblingItemIndex;
    }

    public function set gamblingItemIndex(param1:int):void {
        var _loc2_:Object = this._1484814694gamblingItemIndex;
        if (_loc2_ !== param1) {
            this._1484814694gamblingItemIndex = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "gamblingItemIndex", _loc2_, param1));
        }
    }

    public function get newMaileCount_inbox():int {
        return this._2026418520newMaileCount_inbox;
    }

    public function set newMaileCount_inbox(param1:int):void {
        var _loc2_:Object = this._2026418520newMaileCount_inbox;
        if (_loc2_ !== param1) {
            this._2026418520newMaileCount_inbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newMaileCount_inbox", _loc2_, param1));
        }
    }

    public function get castlesArray():ArrayCollection {
        return this._902435682castlesArray;
    }

    public function set castlesArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._902435682castlesArray;
        if (_loc2_ !== param1) {
            this._902435682castlesArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "castlesArray", _loc2_, param1));
        }
    }

    public function get friendArmysArray():ArrayCollection {
        return this._704639681friendArmysArray;
    }

    public function set friendArmysArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._704639681friendArmysArray;
        if (_loc2_ !== param1) {
            this._704639681friendArmysArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "friendArmysArray", _loc2_, param1));
        }
    }

    public function get blockBeansArray():ArrayCollection {
        return this._1461815869blockBeansArray;
    }

    public function set blockBeansArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1461815869blockBeansArray;
        if (_loc2_ !== param1) {
            this._1461815869blockBeansArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "blockBeansArray", _loc2_, param1));
        }
    }

    public function get autoFurlough():Boolean {
        return this._1329771231autoFurlough;
    }

    public function set autoFurlough(param1:Boolean):void {
        var _loc2_:Object = this._1329771231autoFurlough;
        if (_loc2_ !== param1) {
            this._1329771231autoFurlough = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "autoFurlough", _loc2_, param1));
        }
    }

    public function get newReportCount_army():int {
        return this._2041542881newReportCount_army;
    }

    public function set newReportCount_army(param1:int):void {
        var _loc2_:Object = this._2041542881newReportCount_army;
        if (_loc2_ !== param1) {
            this._2041542881newReportCount_army = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newReportCount_army", _loc2_, param1));
        }
    }

    public function get currentTime():Number {
        return this._601235430currentTime;
    }

    public function set currentTime(param1:Number):void {
        var _loc2_:Object = this._601235430currentTime;
        if (_loc2_ !== param1) {
            this._601235430currentTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "currentTime", _loc2_, param1));
        }
    }

    public function get packageBeanArray():ArrayCollection {
        return this._117401885packageBeanArray;
    }

    public function set packageBeanArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._117401885packageBeanArray;
        if (_loc2_ !== param1) {
            this._117401885packageBeanArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "packageBeanArray", _loc2_, param1));
        }
    }

    public function get newMailCount():int {
        return this._29843496newMailCount;
    }

    public function set newMailCount(param1:int):void {
        var _loc2_:Object = this._29843496newMailCount;
        if (_loc2_ !== param1) {
            this._29843496newMailCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "newMailCount", _loc2_, param1));
        }
    }

    public function get redCount():int {
        return this._811312386redCount;
    }

    public function set redCount(param1:int):void {
        var _loc2_:Object = this._811312386redCount;
        if (_loc2_ !== param1) {
            this._811312386redCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "redCount", _loc2_, param1));
        }
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
