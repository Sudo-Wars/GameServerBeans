package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.events.PropertyChangeEvent;

public class MailBean extends Object implements IEventDispatcher {

    public function MailBean(param1:Object = null) {
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        if (param1) {
            if (param1.targetId != null) {
                this.targetId = param1.targetId;
            }
            if (param1.type_id != null) {
                this.type_id = param1.type_id;
            }
            if (param1.sender != null) {
                this.sender = param1.sender;
            }
            if (param1.receiveTime != null) {
                this.receiveTime = param1.receiveTime;
            }
            if (param1.mailid != null) {
                this.mailid = param1.mailid;
            }
            if (param1.playerId != null) {
                this.playerId = param1.playerId;
            }
            if (param1.selected != null) {
                this.selected = param1.selected;
            }
            if (param1.isRead != null) {
                this.isRead = param1.isRead;
            }
            if (param1.receiver != null) {
                this.receiver = param1.receiver;
            }
            if (param1.title != null) {
                this.title = param1.title;
            }
        }
    }

    private var _110371416title:String;
    private var _441951604targetId:int;
    private var _853090240type_id:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _905962955sender:String;
    private var _2103439280receiveTime:Number;
    private var _1081573102mailid:int;
    private var _1879273436playerId:int;
    private var _1191572123selected:Boolean;
    private var _808719889receiver:String;
    private var _1180158496isRead:int;

    public function get targetId():int {
        return this._441951604targetId;
    }

    public function set targetId(param1:int):void {
        var _loc2_:Object = this._441951604targetId;
        if (_loc2_ !== param1) {
            this._441951604targetId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "targetId", _loc2_, param1));
        }
    }

    public function get mailid():int {
        return this._1081573102mailid;
    }

    public function set mailid(param1:int):void {
        var _loc2_:Object = this._1081573102mailid;
        if (_loc2_ !== param1) {
            this._1081573102mailid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "mailid", _loc2_, param1));
        }
    }

    public function get selected():Boolean {
        return this._1191572123selected;
    }

    public function set selected(param1:Boolean):void {
        var _loc2_:Object = this._1191572123selected;
        if (_loc2_ !== param1) {
            this._1191572123selected = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "selected", _loc2_, param1));
        }
    }

    public function get sender():String {
        return this._905962955sender;
    }

    public function set sender(param1:String):void {
        var _loc2_:Object = this._905962955sender;
        if (_loc2_ !== param1) {
            this._905962955sender = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sender", _loc2_, param1));
        }
    }

    public function get type_id():int {
        return this._853090240type_id;
    }

    public function set type_id(param1:int):void {
        var _loc2_:Object = this._853090240type_id;
        if (_loc2_ !== param1) {
            this._853090240type_id = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "type_id", _loc2_, param1));
        }
    }

    public function get receiveTime():Number {
        return this._2103439280receiveTime;
    }

    public function set receiveTime(param1:Number):void {
        var _loc2_:Object = this._2103439280receiveTime;
        if (_loc2_ !== param1) {
            this._2103439280receiveTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "receiveTime", _loc2_, param1));
        }
    }

    public function get title():String {
        return this._110371416title;
    }

    public function set title(param1:String):void {
        var _loc2_:Object = this._110371416title;
        if (_loc2_ !== param1) {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "title", _loc2_, param1));
        }
    }

    public function get playerId():int {
        return this._1879273436playerId;
    }

    public function set playerId(param1:int):void {
        var _loc2_:Object = this._1879273436playerId;
        if (_loc2_ !== param1) {
            this._1879273436playerId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "playerId", _loc2_, param1));
        }
    }

    public function get isRead():int {
        return this._1180158496isRead;
    }

    public function set isRead(param1:int):void {
        var _loc2_:Object = this._1180158496isRead;
        if (_loc2_ !== param1) {
            this._1180158496isRead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isRead", _loc2_, param1));
        }
    }

    public function get receiver():String {
        return this._808719889receiver;
    }

    public function set receiver(param1:String):void {
        var _loc2_:Object = this._808719889receiver;
        if (_loc2_ !== param1) {
            this._808719889receiver = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "receiver", _loc2_, param1));
        }
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

    public function hasEventListener(param1:String):Boolean {
        return this._bindingEventDispatcher.hasEventListener(param1);
    }

    public function dispatchEvent(param1:Event):Boolean {
        return this._bindingEventDispatcher.dispatchEvent(param1);
    }
}
}
