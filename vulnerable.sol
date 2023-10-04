// Vulnerable Smart Contract
pragma solidity ^0.8.0;

contract DoSVulnerableContract {
    uint256[] public numbers;

    function addNumber(uint256 _number) public {
        numbers.push(_number);
    }

    function computeSum() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            // Simulate a costly computation
            for (uint256 j = 0; j < 2**256; j++) {
                sum += numbers[i];
            }
        }
        return sum;
    }
}
