// https://www.codewars.com/kata/sum-mixed-array/train/javascript

function sumMix(x) {
  result = 0
  x.forEach(num => result += Number(num))
  return result
}

console.log(sumMix([9, 3, '7', '3']))
// 22

console.log(sumMix(['5', '0', 9, 3, 2, 1, '9', 6, 7]))
// 42

console.log(sumMix(['3', 6, 6, 0, '5', 8, 5, '6', 2, '0']))
// 41


// another answer
// +a coerces a variable to a number
function sumMix(x) {
  return x.map(a => +a).reduce((a, b) => a + b)
}

console.log(sumMix([9, 3, '7', '3']))
// 22

console.log(sumMix(['5', '0', 9, 3, 2, 1, '9', 6, 7]))
// 42

console.log(sumMix(['3', 6, 6, 0, '5', 8, 5, '6', 2, '0']))
// 41
