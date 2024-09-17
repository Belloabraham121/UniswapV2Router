// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleLudo {
  
    uint256 constant board_size = 52;
    uint256 constant num_players = 4;

    struct Player {
        address user;
        uint256 position;
    }

    Player[num_players] public players;
    uint256 public currentPlayerTurn;

    constructor(address player1, address player2, address player3, address player4) {
        players[0] = Player(player1, 0);
        players[1] = Player(player2, 0);
        players[2] = Player(player3, 0);
        players[3] = Player(player4, 0);
        currentPlayerTurn = 0;
    }

    function rollandMove() public {
        require(msg.sender == players[currentPlayerTurn].user, "Oga no be your turn");
    
        uint256 roll = (uint256(keccak256(abi.encodePacked(block.timestamp, msg.sender))) % 6) + 1;
        
        players[currentPlayerTurn].position = (players[currentPlayerTurn].position + roll) % board_size;
    
        currentPlayerTurn = (currentPlayerTurn + 1) % num_players;
    }

    function getPlayerPosition(uint256 playerIndex) public view returns (uint256) {
        require(playerIndex < num_players, "Player index no dey");
        return players[playerIndex].position;
    }
}