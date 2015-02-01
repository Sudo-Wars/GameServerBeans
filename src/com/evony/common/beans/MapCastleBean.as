package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class MapCastleBean extends Object implements IEventDispatcher {

    public function MapCastleBean(param1:Object = null) {
        this._1649733957lastUpdated = new Date().getTime();
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.playerLogoUrl != null) {
                this.playerLogoUrl = param1.playerLogoUrl;
            }
            if (param1.relation != null) {
                this.relation = param1.relation;
            }
            if (param1.honor != null) {
                this.honor = param1.honor;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.canOccupy != null) {
                this.canOccupy = param1.canOccupy;
            }
            if (param1.furlough != null) {
                this.furlough = param1.furlough;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.canScout != null) {
                this.canScout = param1.canScout;
            }
            if (param1.npc != null) {
                this.npc = param1.npc;
            }
            if (param1.canLoot != null) {
                this.canLoot = param1.canLoot;
            }
            if (param1.zoneName != null) {
                this.zoneName = param1.zoneName;
            }
            if (param1.flag != null) {
                this.flag = param1.flag;
            }
            if (param1.state != null) {
                this.state = param1.state;
            }
            if (param1.prestige != null) {
                this.prestige = param1.prestige;
            }
            if (param1.userName != null) {
                this.userName = param1.userName;
            }
            if (param1.canTrans != null) {
                this.canTrans = param1.canTrans;
            }
            if (param1.canSend != null) {
                this.canSend = param1.canSend;
            }
            if (param1.allianceName != null) {
                this.allianceName = param1.allianceName;
            }
            if (param1.changeface != null) {
                this.changeface = param1.changeface;
            }
        }
    }

    private var _1299492445playerLogoUrl:String;
    private var _554436100relation:int;
    private var _3373707name:String;
    private var _99462250honor:int;
    private var _98100801canOccupy:Boolean;
    private var _1503629328furlough:Boolean;
    private var _1649733957lastUpdated:Number;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _3355id:int;
    private var _138006258canScout:Boolean;
    private var _109281npc:Boolean;
    private var _549540504canLoot:Boolean;
    private var _848059479zoneName:String;
    private var _3145580flag:String;
    private var _1276224445prestige:int;
    private var _266666762userName:String;
    private var _136649544canTrans:Boolean;
    private var _549739384canSend:Boolean;
    private var _109757585state:int;
    private var _1606140770allianceName:String;
    private var _2131389939changeface:int;

    public function get changeface():int {
        return this._2131389939changeface;
    }

    public function set changeface(param1:int):void {
        var _loc2_:Object = this._2131389939changeface;
        if (_loc2_ !== param1) {
            this._2131389939changeface = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "changeface", _loc2_, param1));
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

    public function get state():int {
        return this._109757585state;
    }

    public function set state(param1:int):void {
        var _loc2_:Object = this._109757585state;
        if (_loc2_ !== param1) {
            this._109757585state = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "state", _loc2_, param1));
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

    public function get canLoot():Boolean {
        return this._549540504canLoot;
    }

    public function set canLoot(param1:Boolean):void {
        var _loc2_:Object = this._549540504canLoot;
        if (_loc2_ !== param1) {
            this._549540504canLoot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canLoot", _loc2_, param1));
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

    public function get playerLogoUrl():String {
        return this._1299492445playerLogoUrl;
    }

    public function set playerLogoUrl(param1:String):void {
        var _loc2_:Object = this._1299492445playerLogoUrl;
        if (_loc2_ !== param1) {
            this._1299492445playerLogoUrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerLogoUrl", _loc2_, param1));
        }
    }

    public function get canScout():Boolean {
        return this._138006258canScout;
    }

    public function set canScout(param1:Boolean):void {
        var _loc2_:Object = this._138006258canScout;
        if (_loc2_ !== param1) {
            this._138006258canScout = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canScout", _loc2_, param1));
        }
    }

    public function get canOccupy():Boolean {
        return this._98100801canOccupy;
    }

    public function set canOccupy(param1:Boolean):void {
        var _loc2_:Object = this._98100801canOccupy;
        if (_loc2_ !== param1) {
            this._98100801canOccupy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canOccupy", _loc2_, param1));
        }
    }

    public function get prestige():int {
        return this._1276224445prestige;
    }

    public function set prestige(param1:int):void {
        var _loc2_:Object = this._1276224445prestige;
        if (_loc2_ !== param1) {
            this._1276224445prestige = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "prestige", _loc2_, param1));
        }
    }

    public function get lastUpdated():Number {
        return this._1649733957lastUpdated;
    }

    public function set lastUpdated(param1:Number):void {
        var _loc2_:Object = this._1649733957lastUpdated;
        if (_loc2_ !== param1) {
            this._1649733957lastUpdated = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "lastUpdated", _loc2_, param1));
        }
    }

    public function get canTrans():Boolean {
        return this._136649544canTrans;
    }

    public function set canTrans(param1:Boolean):void {
        var _loc2_:Object = this._136649544canTrans;
        if (_loc2_ !== param1) {
            this._136649544canTrans = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canTrans", _loc2_, param1));
        }
    }

    public function get zoneName():String {
        return this._848059479zoneName;
    }

    public function set zoneName(param1:String):void {
        var _loc2_:Object = this._848059479zoneName;
        if (_loc2_ !== param1) {
            this._848059479zoneName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "zoneName", _loc2_, param1));
        }
    }

    public function get npc():Boolean {
        return this._109281npc;
    }

    public function set npc(param1:Boolean):void {
        var _loc2_:Object = this._109281npc;
        if (_loc2_ !== param1) {
            this._109281npc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "npc", _loc2_, param1));
        }
    }

    public function get allianceName():String {
        return this._1606140770allianceName;
    }

    public function set allianceName(param1:String):void {
        var _loc2_:Object = this._1606140770allianceName;
        if (_loc2_ !== param1) {
            this._1606140770allianceName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "allianceName", _loc2_, param1));
        }
    }

    public function get honor():int {
        return this._99462250honor;
    }

    public function set honor(param1:int):void {
        var _loc2_:Object = this._99462250honor;
        if (_loc2_ !== param1) {
            this._99462250honor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "honor", _loc2_, param1));
        }
    }

    public function get flag():String {
        return this._3145580flag;
    }

    public function set flag(param1:String):void {
        var _loc2_:Object = this._3145580flag;
        if (_loc2_ !== param1) {
            this._3145580flag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "flag", _loc2_, param1));
        }
    }

    public function get relation():int {
        return this._554436100relation;
    }

    public function set relation(param1:int):void {
        var _loc2_:Object = this._554436100relation;
        if (_loc2_ !== param1) {
            this._554436100relation = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "relation", _loc2_, param1));
        }
    }

    public function get userName():String {
        return this._266666762userName;
    }

    public function set userName(param1:String):void {
        var _loc2_:Object = this._266666762userName;
        if (_loc2_ !== param1) {
            this._266666762userName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "userName", _loc2_, param1));
        }
    }

    public function get canSend():Boolean {
        return this._549739384canSend;
    }

    public function set canSend(param1:Boolean):void {
        var _loc2_:Object = this._549739384canSend;
        if (_loc2_ !== param1) {
            this._549739384canSend = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "canSend", _loc2_, param1));
        }
    }

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function willTrigger(param1:String):Boolean {
        return this._bindingEventDispatcher.willTrigger(param1);
    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
