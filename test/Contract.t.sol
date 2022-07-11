// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/Counter.sol";

contract ContractTest is Test {
    Counter counter;
    function setUp() public {
        counter = new Counter(10);
    }

    function testGetCount() public {
        int value = counter.getCount();
        assertEq(value, 10);
        // you need to explicitely express how verbose you want it to be say forge test -vvvv
        emit log_named_int("The value is: ", value);
    }

    function testIncrementCounter() public {
        counter.incrementCounter();
        int value = counter.getCount();
        assertEq(value, 11);
        emit log_named_int("The value is: ", value);
    }

}
