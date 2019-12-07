// https://www.codewars.com/kata/sum-of-odd-numbers/train/javascript

function rowSumOddNumbers(n) {
  return Math.pow(n, 3)
}

console.log(rowSumOddNumbers(1))
// 1

console.log(rowSumOddNumbers(42))
// 74088

console.log(rowSumOddNumbers(2))
// 8

console.log(rowSumOddNumbers(3))
// 27

console.log(rowSumOddNumbers(4))
// 64

console.log(rowSumOddNumbers(5))
// 125

// another way
function rowSumOddNumbers1(n) {
  var first = (n * (n - 1)) + 1;
  var result = 0;
  for (i = 0; i < n; i++) {
    result += first;
    first += 2;
  }
  return result;
}

console.log(rowSumOddNumbers1(1))
// 1

console.log(rowSumOddNumbers1(42))
// 74088

console.log(rowSumOddNumbers1(2))
// 8

console.log(rowSumOddNumbers1(3))
// 27

console.log(rowSumOddNumbers1(4))
// 64

console.log(rowSumOddNumbers1(5))
// 125
