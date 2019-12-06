// https://www.codewars.com/kata/breaking-chocolate-problem/train/javascript

function breakChocolate(n, m) {
  return Math.max(n * m - 1, 0)
}

console.log(breakChocolate(5, 5))
// 24

console.log(breakChocolate(1, 1))
// 0

