package com.evony.client.action {
import com.evony.common.module.rank.RankAllianceResponse;
import com.evony.common.module.rank.RankCastleResponse;
import com.evony.common.module.rank.RankHeroResponse;
import com.evony.common.module.rank.RankPlayerResponse;

public class RankCommands extends Object {

    public static const GET_PLAYER_RANK:String = "rank.getPlayerRank";
    public static const GET_HERO_RANK:String = "rank.getHeroRank";
    public static const GET_CASTLE_RANK:String = "rank.getCastleRank";
    public static const GET_ALLIANCE_RANK:String = "rank.getAllianceRank";

    public static function getPlayerRank(param1:String, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(GET_PLAYER_RANK, {
            "key": param1,
            "pageNo": param2,
            "pageSize": param3,
            "sortType": param4
        }, RankPlayerResponse, param5);
    }

    public static function getAllianceRank(param1:String, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(GET_ALLIANCE_RANK, {
            "key": param1,
            "pageNo": param2,
            "pageSize": param3,
            "sortType": param4
        }, RankAllianceResponse, param5);
    }

    public static function getCastleRank(param1:String, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(GET_CASTLE_RANK, {
            "key": param1,
            "pageNo": param2,
            "pageSize": param3,
            "sortType": param4
        }, RankCastleResponse, param5);
    }

    public static function getHeroRank(param1:String, param2:int, param3:int, param4:int, param5:Function = null):void {
        CommandFactory.SendCommand(GET_HERO_RANK, {
            "key": param1,
            "pageNo": param2,
            "pageSize": param3,
            "sortType": param4
        }, RankHeroResponse, param5);
    }

    public function RankCommands() {
        super();
    }
}
}
