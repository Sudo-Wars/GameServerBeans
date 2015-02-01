package com.evony.client.action {
import com.evony.common.module.friend.FriendResponse;

public class FriendCommands extends Object {

    public static const DELETE_FRIEND:String = "friend.deleteFriend";
    public static const ADD_BLOCK:String = "friend.addBlock";
    public static const IS_BLOCK_MAIL_PLAYER:String = "friend.isBlockMailPlayer";
    public static const DELETE_BLOCK:String = "friend.deleteBlock";
    public static const ADD_FRIEND:String = "friend.addFriend";

    public static function deleteBlock(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(DELETE_BLOCK, {"player": param1}, FriendResponse, param2);
    }

    public static function addBlock(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(ADD_BLOCK, {"player": param1}, FriendResponse, param2);
    }

    public static function deleteFriend(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(DELETE_FRIEND, {"player": param1}, FriendResponse, param2);
    }

    public static function isBlockMailPlayer(param1:int, param2:Function = null):void {
        CommandFactory.SendCommand(IS_BLOCK_MAIL_PLAYER, {"mailId": param1}, FriendResponse, param2);
    }

    public static function addFriend(param1:String, param2:Function = null):void {
        CommandFactory.SendCommand(ADD_FRIEND, {"player": param1}, FriendResponse, param2);
    }

    public function FriendCommands() {
        super();
    }
}
}
