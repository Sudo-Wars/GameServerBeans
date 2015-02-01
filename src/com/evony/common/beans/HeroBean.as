package com.evony.common.beans {
import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;

import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

public class HeroBean extends Object implements IEventDispatcher {

    private static var heroStatusStrings:Array = new Array("Idle", "Mayor", "Defend", "March", "Captured", "Return");

    public function HeroBean(param1:Object = null) {
        var _loc2_:Object = null;
        this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
        super();
        this.buffsArray = new ArrayCollection();
        if (param1) {
            if (param1.experience != null) {
                this.experience = param1.experience;
            }
            if (param1.status != null) {
                this.status = param1.status;
            }
            if (param1.name != null) {
                this.name = param1.name;
            }
            if (param1.management != null) {
                this.management = param1.management;
            }
            if (param1.stratagemBuffAdded != null) {
                this.stratagemBuffAdded = param1.stratagemBuffAdded;
            }
            if (param1.managementBuffAdded != null) {
                this.managementBuffAdded = param1.managementBuffAdded;
            }
            if (param1.powerBuffAdded != null) {
                this.powerBuffAdded = param1.powerBuffAdded;
            }
            if (param1.power != null) {
                this.power = param1.power;
            }
            if (param1.level != null) {
                this.level = param1.level;
            }
            if (param1.managementAdded != null) {
                this.managementAdded = param1.managementAdded;
            }
            if (param1.id != null) {
                this.id = param1.id;
            }
            if (param1.buffs) {
                for each(_loc2_ in param1.buffs) {
                    this.buffsArray.addItem(new BuffBean(_loc2_));
                }
            }
            if (param1.upgradeExp != null) {
                this.upgradeExp = param1.upgradeExp;
            }
            if (param1.powerAdded != null) {
                this.powerAdded = param1.powerAdded;
            }
            if (param1.remainPoint != null) {
                this.remainPoint = param1.remainPoint;
            }
            if (param1.logoUrl != null) {
                this.logoUrl = param1.logoUrl;
            }
            if (param1.stratagemAdded != null) {
                this.stratagemAdded = param1.stratagemAdded;
            }
            if (param1.itemId != null) {
                this.itemId = param1.itemId;
            }
            if (param1.itemAmount != null) {
                this.itemAmount = param1.itemAmount;
            }
            if (param1.stratagem != null) {
                this.stratagem = param1.stratagem;
            }
            if (param1.loyalty != null) {
                this.loyalty = param1.loyalty;
            }
        }
    }

    private var _85567126experience:Number;
    private var _1799980989management:int;
    private var _761536362managementBuffAdded:int;
    private var _814364440powerBuffAdded:int;
    private var _106858757power:int;
    private var _3355id:int;
    private var _2032248903buffsArray:ArrayCollection;
    private var _1456811858stratagemAdded:int;
    private var _1627044220remainPoint:int;
    private var _342500292logoUrl:String;
    private var _892481550status:int;
    private var _3373707name:String;
    private var _1691501851stratagemBuffAdded:int;
    private var busyCount:int = 0;
    private var _102865796level:int;
    private var _682371709managementAdded:int;
    private var _bindingEventDispatcher:EventDispatcher;
    private var _1999179167upgradeExp:int;
    private var _412762875powerAdded:int;
    private var busyUntil:Number = 0;
    private var _1178662002itemId:String;
    private var _1478417739itemAmount:int;
    private var _358728774loyalty:int;
    private var _412944526stratagem:int;

    public function get isMarching():Boolean {
        return this.status == 3;
    }

    public function get power():int {
        return this._106858757power;
    }

    public function set power(param1:int):void {
        var _loc2_:Object = this._106858757power;
        if (_loc2_ !== param1) {
            this._106858757power = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "power", _loc2_, param1));
        }
    }

    public function get stratagemBuffAdded():int {
        return this._1691501851stratagemBuffAdded;
    }

    public function set stratagemBuffAdded(param1:int):void {
        var _loc2_:Object = this._1691501851stratagemBuffAdded;
        if (_loc2_ !== param1) {
            this._1691501851stratagemBuffAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stratagemBuffAdded", _loc2_, param1));
        }
    }

    public function get isIdle():Boolean {
        return this.status == 0 && !this.isBusy;
    }

    public function get heroItemId():String {
        if (this.isPoliticsHero) {
            return "hero.management.1";
        }
        if (this.isIntelHero) {
            return "hero.intelligence.1";
        }
        return "hero.power.1";
    }

    public function get isCaptured():Boolean {
        return this.status == 4 && !this.isBusy;
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

    public function get powerWithBuffAdded():int {
        return this.power + Math.round(this.power * this.powerBuffAdded / 100);
    }

    public function get isBusy():Boolean {
        if (this.busyUntil > 0 && this.busyUntil <= new Date().getTime()) {
            this.busyUntil = 0;
        }
        return this.busyUntil > 0;
    }

    public function set isBusy(param1:Boolean):void {
        var _loc2_:Object = this.isBusy;
        if (_loc2_ !== param1) {
            this._1180619197isBusy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "isBusy", _loc2_, param1));
        }
    }

    public function get isAttackHero():Boolean {
        return this.power >= Math.max(this.management, this.stratagem);
    }

    public function get isPoliticsHero():Boolean {
        return this.management >= Math.max(this.stratagem, this.power);
    }

    public function get management():int {
        return this._1799980989management;
    }

    public function set management(param1:int):void {
        var _loc2_:Object = this._1799980989management;
        if (_loc2_ !== param1) {
            this._1799980989management = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "management", _loc2_, param1));
        }
    }

    public function get itemAmount():int {
        return this._1478417739itemAmount;
    }

    public function set itemAmount(param1:int):void {
        var _loc2_:Object = this._1478417739itemAmount;
        if (_loc2_ !== param1) {
            this._1478417739itemAmount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemAmount", _loc2_, param1));
        }
    }

    public function get loyalty():int {
        return this._358728774loyalty;
    }

    public function set loyalty(param1:int):void {
        var _loc2_:Object = this._358728774loyalty;
        if (_loc2_ !== param1) {
            this._358728774loyalty = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "loyalty", _loc2_, param1));
        }
    }

    public function get heroWithBaseToString():String {
        return "<b>" + this.name + "</b> Lvl:<i>" + this.level + "</i> [P:" + this.managementWithBuffAdded + "-" + this.managementAdded + " A:" + this.powerWithBuffAdded + "-" + this.powerAdded + " I:" + this.stratagemWithBuffAdded + "-" + this.stratagemAdded + "] exp:" + this.experience + "/" + this.upgradeExp;
    }

    public function get upgradeExp():int {
        return this._1999179167upgradeExp;
    }

    public function set upgradeExp(param1:int):void {
        var _loc2_:Object = this._1999179167upgradeExp;
        if (_loc2_ !== param1) {
            this._1999179167upgradeExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "upgradeExp", _loc2_, param1));
        }
    }

    public function get isDefending():Boolean {
        return this.status == 2;
    }

    public function get managementBuffAdded():int {
        return this._761536362managementBuffAdded;
    }

    public function set managementBuffAdded(param1:int):void {
        var _loc2_:Object = this._761536362managementBuffAdded;
        if (_loc2_ !== param1) {
            this._761536362managementBuffAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "managementBuffAdded", _loc2_, param1));
        }
    }

    public function get experience():Number {
        return this._85567126experience;
    }

    public function set experience(param1:Number):void {
        var _loc2_:Object = this._85567126experience;
        if (_loc2_ !== param1) {
            this._85567126experience = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "experience", _loc2_, param1));
        }
    }

    public function get managementAdded():int {
        return this._682371709managementAdded;
    }

    public function set managementAdded(param1:int):void {
        var _loc2_:Object = this._682371709managementAdded;
        if (_loc2_ !== param1) {
            this._682371709managementAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "managementAdded", _loc2_, param1));
        }
    }

    public function get stratagem():int {
        return this._412944526stratagem;
    }

    public function set stratagem(param1:int):void {
        var _loc2_:Object = this._412944526stratagem;
        if (_loc2_ !== param1) {
            this._412944526stratagem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stratagem", _loc2_, param1));
        }
    }

    public function get level():int {
        return this._102865796level;
    }

    public function set level(param1:int):void {
        var _loc2_:Object = this._102865796level;
        if (_loc2_ !== param1) {
            this._102865796level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "level", _loc2_, param1));
        }
    }

    public function get heroToString():String {
        return "<b>" + this.name + "</b> Lvl:<i>" + this.level + "</i> [P:" + this.managementWithBuffAdded + " A:" + this.powerWithBuffAdded + " I:" + this.stratagemWithBuffAdded + "] exp:" + this.experience + "/" + this.upgradeExp;
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

    public function get nameLowerCase():String {
        return this.name.toLowerCase();
    }

    public function get remainPoint():int {
        return this._1627044220remainPoint;
    }

    public function set remainPoint(param1:int):void {
        var _loc2_:Object = this._1627044220remainPoint;
        if (_loc2_ !== param1) {
            this._1627044220remainPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "remainPoint", _loc2_, param1));
        }
    }

    public function get statusName():String {
        return heroStatusStrings[this.status];
    }

    public function get stratagemAdded():int {
        return this._1456811858stratagemAdded;
    }

    public function set stratagemAdded(param1:int):void {
        var _loc2_:Object = this._1456811858stratagemAdded;
        if (_loc2_ !== param1) {
            this._1456811858stratagemAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "stratagemAdded", _loc2_, param1));
        }
    }

    public function get itemId():String {
        return this._1178662002itemId;
    }

    public function set itemId(param1:String):void {
        var _loc2_:Object = this._1178662002itemId;
        if (_loc2_ !== param1) {
            this._1178662002itemId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "itemId", _loc2_, param1));
        }
    }

    public function get isReturning():Boolean {
        return this.status == 5;
    }

    public function get isAvailable():Boolean {
        return (this.status == 0 || this.status == 1) && !this.isBusy;
    }

    public function get buffsArray():ArrayCollection {
        return this._2032248903buffsArray;
    }

    public function set buffsArray(param1:ArrayCollection):void {
        var _loc2_:Object = this._2032248903buffsArray;
        if (_loc2_ !== param1) {
            this._2032248903buffsArray = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "buffsArray", _loc2_, param1));
        }
    }

    public function get managementWithBuffAdded():int {
        return this.management + Math.round(this.management * this.managementBuffAdded / 100);
    }

    public function get logoUrl():String {
        return this._342500292logoUrl;
    }

    public function set logoUrl(param1:String):void {
        var _loc2_:Object = this._342500292logoUrl;
        if (_loc2_ !== param1) {
            this._342500292logoUrl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "logoUrl", _loc2_, param1));
        }
    }

    public function get base():int {
        return Math.max(this.management, this.power, this.stratagem) + this.remainPoint - this.level;
    }

    public function get salary():int {
        return this.level * 1000;
    }

    public function get isIntelHero():Boolean {
        return this.stratagem >= Math.max(this.management, this.power);
    }

    public function get powerBuffAdded():int {
        return this._814364440powerBuffAdded;
    }

    public function set powerBuffAdded(param1:int):void {
        var _loc2_:Object = this._814364440powerBuffAdded;
        if (_loc2_ !== param1) {
            this._814364440powerBuffAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "powerBuffAdded", _loc2_, param1));
        }
    }

    public function get typeName():String {
        if (this.isPoliticsHero) {
            return "Pol";
        }
        if (this.isIntelHero) {
            return "Int";
        }
        return "Att";
    }

    public function get pts():String {
        return "P:" + this.managementAdded + ",A:" + this.powerAdded + ",I:" + this.stratagemAdded;
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

    public function get stratagemWithBuffAdded():int {
        return this.stratagem + Math.round(this.stratagem * this.stratagemBuffAdded / 100);
    }

    public function get isLoyal():Boolean {
        return this.loyalty >= Math.min(100, 1.5 * Math.max(this.management, this.stratagem, this.power));
    }

    public function get powerAdded():int {
        return this._412762875powerAdded;
    }

    public function set powerAdded(param1:int):void {
        var _loc2_:Object = this._412762875powerAdded;
        if (_loc2_ !== param1) {
            this._412762875powerAdded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "powerAdded", _loc2_, param1));
        }
    }

    public function get isMayor():Boolean {
        return this.status == 1 && !this.isBusy;
    }

    private function set _1180619197isBusy(param1:Boolean):void {
        if (!this.isBusy) {
            this.busyCount = 0;
        }
        if (param1) {
            if (this.busyUntil > 0) {
                this.busyCount++;
            }
            else {
                this.busyUntil = new Date().getTime() + 30000;
            }
        }
        else if (this.busyCount > 0) {
            this.busyCount--;
            this.busyUntil = new Date().getTime() + 30000;
        }
        else {
            this.busyUntil = 0;
        }

    }

    public function removeEventListener(param1:String, param2:Function, param3:Boolean = false):void {
        this._bindingEventDispatcher.removeEventListener(param1, param2, param3);
    }

    public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false):void {
        this._bindingEventDispatcher.addEventListener(param1, param2, param3, param4, param5);
    }

    public function setBusyFrom(param1:HeroBean):void {
        this.busyUntil = param1.busyUntil;
        this.busyCount = param1.busyCount;
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
