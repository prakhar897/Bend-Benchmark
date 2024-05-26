MOD = 100001

def factorial(n):
    result = 1
    for i in range(1, n + 1):
        result = (result * i) % MOD
    return result

number = 50000000  # Change this value to calculate the factorial of a different number
print(f"Factorial of {number} mod {MOD} is {factorial(number)}")
