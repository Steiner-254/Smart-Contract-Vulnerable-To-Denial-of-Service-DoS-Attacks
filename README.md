# Smart-Contract-Vulnerable-To-Denial-of-Service-DoS-Attacks
Smart Contract Vulnerable To Denial of Service (DoS) Attacks

# Decription
~ In Ethereum-based smart contracts, one common vulnerability is excessive gas consumption or computational complexity that can be exploited to overload the Ethereum network or disrupt the execution of the contract.

# vulnerable.sol
~ In this vulnerable.sol contract:

1. The addNumber function allows anyone to add numbers to an array in the contract.

2. The computeSum function calculates the sum of all numbers in the array. However, it includes a nested loop with an extremely large number of iterations, which simulates a costly computation. This can cause the contract execution to consume an excessive amount of gas.

~ An attacker can exploit this vulnerability by repeatedly calling the addNumber function to add a large number of values to the numbers array. As the array grows, the gas required to execute the computeSum function increases linearly with the size of the array. Eventually, the gas limit for Ethereum block execution could be exceeded, causing the contract to become unresponsive and leading to a DoS attack.

# fix.sol
~ In this fix.sol contract:

1. The addNumber function still allows anyone to add numbers to the numbers array.

2. The computeSum function calculates the sum of all numbers in the array using a straightforward loop. It no longer contains the nested loop with an extremely large number of iterations, so it won't consume excessive gas.

~ By removing the costly computation and the unbounded loop, this contract is no longer vulnerable to DoS attacks due to excessive gas consumption. It's important to ensure that your smart contracts have predictable and reasonable gas costs to prevent potential DoS vulnerabilities.
