package com.evony.eum {
public class BuildingEum extends Object {

    public function BuildingEum() {
        super();
        this.levelData = new Array();
        this.upLevelDescs = new Array();
    }

    public var wikiDesc:String;
    public var name:String;
    public var desc:String;
    public var typeId:int;
    public var upLevelDesc:String;
    private var levelData:Array;
    private var upLevelDescs:Array;

    public function addUpLevelDesc(param1:UpLevelDesc):void {
        this.upLevelDescs[param1.level] = param1;
    }

    public function getUpLevelDesc(param1:int):UpLevelDesc {
        return this.upLevelDescs[param1];
    }

    public function addLevelData(param1:BuildingLevelData):void {
        this.levelData[param1.level] = param1;
    }

    public function getLevelData(param1:int):BuildingLevelData {
        return this.levelData[param1];
    }
}
}
