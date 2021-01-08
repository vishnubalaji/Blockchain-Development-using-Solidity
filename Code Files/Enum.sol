pragma solidity 0.5.1;

contract MyContract {
    enum State { Waiting, Ready, Active }
    State public state;
    
    // Enum is used to assign only one property or state for a variable. Imagine a process that has
    // four different states such as Waiting, Active, Running and Terminated. Only one state can exist at a time.
    
    constructor() public {
        state = State.Waiting;
    }
    
    function isActive() public view returns(bool) {
        return state==State.Active;
    }
    
    function active() public {
        state=State.Active;
    }
    
    function ready() public {
        state=State.Ready;
    }
}
