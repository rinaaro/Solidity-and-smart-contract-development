Throughout this course, your code will not only be graded on functionality, but also cleanliness, efficiency and security. Please follow the coding conventions we discussed in class!

Converting a binary number to decimal is rather simple - each digit represents a power of two which either gets added into the total if the digit is 1 or not if the digit is 0. If you do not recall, review Lecture 2, slide 22. In the challenge set, we will use two different ways to do this conversion.

# Part A - String Conversion (3 points)
Write a function that intakes a binary number as a string and returns a decimal integer. For the sake of simplicity, let's assume that the string binary input is a positive (unsigned) binary number.

The function should take in a string, split it into an Array, and then evaluate each index for "1" or "0". You may use the strings library if it makes things easier for you.

# Part B - Masking and Bitwise Operations (5 points)
Masking is an incredibly useful concept that is applied widely in many areas of technology. One of the most common use case is Subnet Masking. To understand subnet masking, we must first understand how IP addresses are assigned.

Global, or public, IP addresses are location based - Meaning each region gets a fixed number. Usually, your ISP (Internet Service Provider) buys a range of IPs in bulk and assigns to its users. To further assign locally, the ISP can dynamically make available certain addresses or assign a static one for a short period of time. It is easy to region lock content based on the IP address because regions share a common portion of the address.

In order to figure out the region, possibly down to the exact location, we need an easy way to rip out portions of the IP. This is done by subnet masking. The masking is done by zeroing all unnecessary portions of the IP and then bit shifting the result to the correct location.

Boolean Algebra
Solidity is able to perform operations on bits. If we think of 1 as true and 0 as false, we can derive the following truth table when comparing two bits (A, B):

AND (&) - Both A and B have to be true (1) to be true.
OR (|) - When A is true or B is true, the whole statement is true
NOT (!) - flips the bit.
A mask uses all zeros except the relevant portion which is a one. If we perform an AND operation on the original binary number and the mask, every bit in the binary number will become 0 except for the relevant portion.

A bit shifted mask
For this exercise, we will use a bit-shifted mask to grab each bit. Your function should take in an uint8 (what implications does this have for your code?) and return an array of integers, that when added together, will give you the number you originally input to the function.

For example, if the input is 13, then the resulting array should be [1,0,4,8].

To see a practical operation, lets say we had the variable x = 13 which is 1101 in binary. We have a mask = 1 or 0001 in binary. What happens when we write ... is 2 in binary.

Putting it all together
Now that you have a way to expose 1 bit at a time and solidity gives you the decimal representation of the result already, all you need to do is shift the mask 1 bit at a time to the left until the end of the binary number. Hint: since the number is restricted to uint8, you only need to shift a set number of times.

# Part C - RPC with Foundry Cast (1 + 1 points)
Deploy the contract that you wrote for part A onto the Sepolia net with Foundry Cast. Submit a screenshot of the completion message which shows the contract address that your contract was deployed to. (1 point)

**Hint: ** If you forgot the deploy command, forge init creates a README which contains the most essential commands. Alternatively, refer to the Foundry documentation.

Find a partner, include his / her name in your submission, and make a Cast call to their contract. Take a screenshot of your request and the response that you received. Based on the response, do you believe they have correctly coded their contract? (1 point)
