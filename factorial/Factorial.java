import java.math.BigInteger;

public class Factorial {
    private static final int MOD = 100001;

    public static void main(String[] args) {
        int number = 5000000; // Change this value to calculate the factorial of a different number
        System.out.println("Factorial of " + number + " mod " + MOD + " is " + factorial(number));
    }

    public static BigInteger factorial(int n) {
        BigInteger result = BigInteger.ONE;
        for (int i = 1; i <= n; i++) {
            result = result.multiply(BigInteger.valueOf(i)).mod(BigInteger.valueOf(MOD));
        }
        return result;
    }
}
