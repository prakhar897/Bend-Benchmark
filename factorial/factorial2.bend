def factorial(n, acc):
  if n == 0:
    return acc
  else:
    return factorial(n - 1, (acc * n) % 100001)

def main:
  return factorial(5000000, 1)