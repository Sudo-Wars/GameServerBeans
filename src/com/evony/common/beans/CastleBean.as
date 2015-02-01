package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class CastleBean extends Object implements IEventDispatcher {

    public function CastleBean(param1:Object = null) {
        var _loc2_:Object = null;
        var _loc3_:BuffBean = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.herosArray = new ArrayCollection();
        this.tradesArray = new ArrayCollection();
        this.buffs = new Object();
        this.buildingQueuesArray = new ArrayCollection();
        this.buildingsArray = new ArrayCollection();
        this.fieldsArray = new ArrayCollection();
        this.transingTradesArray = new ArrayCollection();
        if (param1) {
            if (param1.heros) {
                for each(_loc2_ in param1.heros) {
                    this.herosArray.addItem(new HeroBean(_loc2_));
                }
            }
            if (param1.trades) {
                for each(_loc2_ in param1.trades) {
                    this.tradesArray.addItem(new TradeBean(_loc2_));
                }
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.buffs) {
                for each(_loc2_ in param1.buffs) {
                    _loc3_ = new BuffBean(_loc2_);
                    this.buffs[_loc3_.typeId] = _loc3_;
                }
            }
            if (param1.fortification != null) {
                this.fortification = new FortificationsBean(param1.fortification);
            }
            if (param1.logUrl != null) {
                this.logUrl = param1.logUrl;
            }
            if (param1.goOutForBattle != null) {
                this.goOutForBattle = param1.goOutForBattle;
            }
            if (param1.troop != null) {
                this.troop = new TroopBean(param1.troop);
            }
            if (param1.status != null) {
                this.status = param1.status;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.buildingQueues) {
                for each(_loc2_ in param1.buildingQueues) {
                    this.buildingQueuesArray.addItem(new BuildingQueueBean(_loc2_));
                }
            }
            if (param1.resource != null) {
                this.resource = new CastleResourceBean(param1.resource);
            }
            if (param1.allowAlliance != null) {
                this.allowAlliance = param1.allowAlliance;
            }
            if (param1.usePACIFY_SUCCOUR_OR_PACIFY_PRAY != null) {
                this.usePACIFY_SUCCOUR_OR_PACIFY_PRAY = param1.usePACIFY_SUCCOUR_OR_PACIFY_PRAY;
            }
            if (param1.fieldId != null) {
                this.fieldId = param1.fieldId;
            }
            if (param1.buildings) {
                for each(_loc2_ in param1.buildings) {
                    this.buildingsArray.addItem(new BuildingBean(_loc2_));
                }
            }
            if (param1.fields) {
                for each(_loc2_ in param1.fields) {
                    this.fieldsArray.addItem(new FieldBean(_loc2_));
                }
            }
            if (param1.hasEnemy != null) {
                this.hasEnemy = param1.hasEnemy;
            }
            if (param1.transingTrades) {
                for each(_loc2_ in param1.transingTrades) {
                    this.transingTradesArray.addItem(new TransingTradeBean(_loc2_));
                }
            }
        }
    }

    private var _1225376224herosArray:ArrayCollection;
    private var _892481550status:int;
    private var _2059290973buildingQueuesArray:ArrayCollection;
    private var _3373707name:String;
    private var _341064690resource:CastleResourceBean;
    private var _1236765024allowAlliance:Boolean;
    private var _1458231286tradesArray:ArrayCollection;
    private var _328168726usePACIFY_SUCCOUR_OR_PACIFY_PRAY:int;
    private var _861252683fieldId:int;
    private var _3355id:int;
    private var _233906701fortification:FortificationsBean;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1632439642buildingsArray:ArrayCollection;
    private var _1228099360fieldsArray:ArrayCollection;
    private var _116645134hasEnemy:Boolean;
    private var _110026oid:int = -1;
    private var _1097354357logUrl:String;
    private var _94091904buffs:Object;
    private var _45571131goOutForBattle:Boolean;
    private var _637336720transingTradesArray:ArrayCollection;
    private var _110634834troop:TroopBean;

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

    public function get logUrl():String {
        return this._1097354357logUrl;
    }

    public function set logUrl(param1:String):void {
        var _loc2_:Object = this._1097354357logUrl;
        if (_loc2_ !== param1) {
            this._1097354357logUrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "logUrl", _loc2_, param1));
        }
    }

    public function get tradesArray():ArrayCollection {
        return this._1458231286tradesArray;
    }

    public function set tradesArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1458231286tradesArray;
        if (_loc2_ !== param1) {
            this._1458231286tradesArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "tradesArray", _loc2_, param1));
        }
    }

    public function get name():String {
        return this._3373707name;
    }

    public function set name(param1:String):void {
        var _loc2_:Object = this._3373707name;
        if (_loc2_ !== param1) {
            this._3373707name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "name", _loc2_, param1));
        }
    }

    public function get id():int {
        return this._3355id;
    }

    public function set id(param1:int):void {
        var _loc2_:Object = this._3355id;
        if (_loc2_ !== param1) {
            this._3355id = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "id", _loc2_, param1));
        }
    }

    public function get herosArray():ArrayCollection {
        return this._1225376224herosArray;
    }

    public function set herosArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1225376224herosArray;
        if (_loc2_ !== param1) {
            this._1225376224herosArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "herosArray", _loc2_, param1));
        }
    }

    public function get buildingQueuesArray():ArrayCollection {
        return this._2059290973buildingQueuesArray;
    }

    public function set buildingQueuesArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._2059290973buildingQueuesArray;
        if (_loc2_ !== param1) {
            this._2059290973buildingQueuesArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingQueuesArray", _loc2_, param1));
        }
    }

    public function get resource():CastleResourceBean {
        return this._341064690resource;
    }

    public function set resource(param1:CastleResourceBean):void {
        var _loc2_:Object = this._341064690resource;
        if (_loc2_ !== param1) {
            this._341064690resource = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "resource", _loc2_, param1));
        }
    }

    public function get allowAlliance():Boolean {
        return this._1236765024allowAlliance;
    }

    public function set allowAlliance(param1:Boolean):void {
        var _loc2_:Object = this._1236765024allowAlliance;
        if (_loc2_ !== param1) {
            this._1236765024allowAlliance = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allowAlliance", _loc2_, param1));
        }
    }

    public function get fieldsArray():ArrayCollection {
        return this._1228099360fieldsArray;
    }

    public function set fieldsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1228099360fieldsArray;
        if (_loc2_ !== param1) {
            this._1228099360fieldsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fieldsArray", _loc2_, param1));
        }
    }

    public function get hasEnemy():Boolean {
        return this._116645134hasEnemy;
    }

    public function set hasEnemy(param1:Boolean):void {
        var _loc2_:Object = this._116645134hasEnemy;
        if (_loc2_ !== param1) {
            this._116645134hasEnemy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "hasEnemy", _loc2_, param1));
        }
    }

    public function get fieldId():int {
        return this._861252683fieldId;
    }

    public function set fieldId(param1:int):void {
        var _loc2_:Object = this._861252683fieldId;
        if (_loc2_ !== param1) {
            this._861252683fieldId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fieldId", _loc2_, param1));
        }
    }

    public function get goOutForBattle():Boolean {
        return this._45571131goOutForBattle;
    }

    public function set goOutForBattle(param1:Boolean):void {
        var _loc2_:Object = this._45571131goOutForBattle;
        if (_loc2_ !== param1) {
            this._45571131goOutForBattle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "goOutForBattle", _loc2_, param1));
        }
    }

    public function get oid():int {
        return this._110026oid;
    }

    public function set oid(param1:int):void {
        var _loc2_:Object = this._110026oid;
        if (_loc2_ !== param1) {
            this._110026oid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "oid", _loc2_, param1));
        }
    }

    public function get troop():TroopBean {
        return this._110634834troop;
    }

    public function set troop(param1:TroopBean):void {
        var _loc2_:Object = this._110634834troop;
        if (_loc2_ !== param1) {
            this._110634834troop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "troop", _loc2_, param1));
        }
    }

    public function get buildingsArray():ArrayCollection {
        return this._1632439642buildingsArray;
    }

    public function set buildingsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._1632439642buildingsArray;
        if (_loc2_ !== param1) {
            this._1632439642buildingsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buildingsArray", _loc2_, param1));
        }
    }

    public function get status():int {
        return this._892481550status;
    }

    public function set status(param1:int):void {
        var _loc2_:Object = this._892481550status;
        if (_loc2_ !== param1) {
            this._892481550status = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "status", _loc2_, param1));
        }
    }

    public function get fortification():FortificationsBean {
        return this._233906701fortification;
    }

    public function set fortification(param1:FortificationsBean):void {
        var _loc2_:Object = this._233906701fortification;
        if (_loc2_ !== param1) {
            this._233906701fortification = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "fortification", _loc2_, param1));
        }
    }

    public function get transingTradesArray():ArrayCollection {
        return this._637336720transingTradesArray;
    }

    public function set transingTradesArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._637336720transingTradesArray;
        if (_loc2_ !== param1) {
            this._637336720transingTradesArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "transingTradesArray", _loc2_, param1));
        }
    }

    public function get usePACIFY_SUCCOUR_OR_PACIFY_PRAY():int {
        return this._328168726usePACIFY_SUCCOUR_OR_PACIFY_PRAY;
    }

    public function set usePACIFY_SUCCOUR_OR_PACIFY_PRAY(param1:int):void {
        var _loc2_:Object = this._328168726usePACIFY_SUCCOUR_OR_PACIFY_PRAY;
        if (_loc2_ !== param1) {
            this._328168726usePACIFY_SUCCOUR_OR_PACIFY_PRAY = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "usePACIFY_SUCCOUR_OR_PACIFY_PRAY", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
