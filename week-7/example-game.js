var player = {
  win: "",
  state: "X",
  selection: 0,

  makeSelection: function(board, selection, state) {
    if (player.state === "### CHANGE THIS TO X TO PLAY COMPUTER IN CHROME CONSOLE ###") {
      selection = Number(prompt("Select an open spot between 1 and 9", game.openSpots));
    }
    else selection = game.openSpots[Math.floor(Math.random() * game.openSpots.length)];
    player.takeTurn(board, selection, state);
  },

  takeTurn: function(board, selection, state) {
    if (selection === undefined) {
      console.log("\n       This game is a Draw!\n");
      return;
    }
    else {
      console.log()
      console.log("       " + player.state + " picks " + selection);
    }
    player.markSelection(board, selection, state)
  },

  markSelection: function(board, selection, state) {
    for(var row = 0; row < 3; row++) {
      for(var col = 0; col < 3; col++) {
        if (board[row][col] === selection) board[row][col] = player.state;
      }
    }
    for(var remove = 0; remove < 9; remove++) {
      if(game.openSpots[remove] === selection) game.openSpots.splice(remove, 1);
    }
    console.log("       =====");
    board.forEach(function(value) { console.log("       " + value.join(" ")) })
    if (player.state === "X") player.state = "O";
    else player.state = "X";
    game.checkForWinner(board, selection, state)
    }
}

var game = {
  board: [[1,2,3],[4,5,6],[7,8,9]],
  openSpots: [1,2,3,4,5,6,7,8,9],

  checkForWinner: function(board, selection, state) {
    var x = "X"
    var o = "O"
    for(var row = 0; row < 3; row++) {
      if (board[row].join(" ") === "O O O") player.win = o;
      if (board[row].join(" ") === "X X X") player.win = x;
    }

    var flipped = board[0].map(function(col, index) {
      return board.map(function(row) {
      return row[index]
      })
    });

    for(var row = 0; row < 3; row++) {
      if (flipped[row].join(" ") === "O O O") player.win = o;
      if (flipped[row].join(" ") === "X X X") player.win = x;
    }

    if (board[1][1] === x) {
      if (board[0][0] === x && board[2][2] === x) player.win = x;
      if (board[0][2] === x && board[2][0] === x) player.win = x;
    }

    if (board[1][1] === o) {
      if (board[0][0] === o && board[2][2] === o) player.win = o;
      if (board[0][2] === o && board[2][0] === o) player.win = o;
    }

    if (player.win === x || player.win === o) {
      console.log();
      console.log("       " + player.win + " is the winner!");
      console.log("       =====");
      board.forEach(function(value) { console.log("       " + value.join(" ")) })
      console.log()
      return
    }
    player.makeSelection(board, selection, state)
  }
}


// DRIVER TEST CODE TO START A NEW GAME
player.makeSelection(game.board, player.selection, "X")
