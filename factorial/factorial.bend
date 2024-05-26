def fact(n):
  bend d = 0, i = 1:
    when d < n:
      res = fork(d+1, (i * (d + 1)) % 100001)
    else:
      res = i
  return res

def main():
  return fact(5000000)