pragma solidity >=0.8.0 <0.9.0;
//SPDX-License-Identifier: MIT

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {
    struct Todo {
        string text;
        uint8 time;
        bool completed;
    }

    // An array of 'Todo' structs
    Todo[] public todos;

    function create(string memory _text, uint8 _time) public {
        // 3 ways to initialize a struct
        // - calling it like a function
        todos.push(Todo(_text, _time, false));

        // // key value mapping
        // todos.push(Todo({text: _text, completed: false}));

        // // initialize an empty struct and then update it
        // Todo memory todo;
        // todo.text = _text;
        // // todo.completed initialized to false

        // todos.push(todo);
    }

    // update text
    function update(uint _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // toggle completed
    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }

    function decrementTime(uint _index) public {
        Todo storage todo = todos[_index];
        todo.time--;
    }
}
