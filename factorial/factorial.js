const MOD = 100001n;

function factorial(n) {
    let result = 1n;
    for (let i = 1n; i <= n; i++) {
        result = (result * i) % MOD;
    }
    return result;
}

let number = 50000000;  // Change this value to calculate the factorial of a different number
console.log("Factorial of " + number + " mod " + MOD + " is " + factorial(BigInt(number)).toString());
