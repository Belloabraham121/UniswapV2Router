// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleLudo {
  
    uint8  board_size = 52;
    uint8  num_players = 4;

    struct Player {
        address addr;
        uint8 position;
    }

    Player[num_players] public players;
    uint8 public currentPlayerTurn;


    constructor(address player1, address player2, address player3, address player4) {
        players[0] = Player(player1, 0);
        players[1] = Player(player2, 0);
        players[2] = Player(player3, 0);
        players[3] = Player(player4, 0);
        currentPlayerTurn = 0;
    }

    function rollandMove() public {
       
    }

    function getPlayerPosition(uint8 playerIndex) public view returns (uint8) {
        require(playerIndex < num_players, "Player index no dey");
        return players[playerIndex].position;
    }
}