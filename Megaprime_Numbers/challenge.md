A prime number is an integer greater than  that has no positive divisors other than  and itself.

We call a number megaprime if it is prime and all of its individual digits are prime. For example, 53 is megaprime because it is prime and all its digits (5 and 3) are prime; however, 35 is not megaprime because it is not prime (it's divisible by 5 and 7), and 13 is not megaprime because it has a non-prime digit (1 is not prime).

Given two long integers, first and last, find and print the total number of megaprime numbers in the inclusive range between first and last.

Input Format

Two space-separated long integers describing the respective values of first and last.

Constraints

1<= first <= last <= 10^15
last -first <= 10^9

Output Format

Print a long integer denoting the total number of megaprimes in the inclusive interval between first and last.

Sample input 
1 100

Sample output
8