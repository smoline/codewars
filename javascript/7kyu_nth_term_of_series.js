// https://www.codewars.com/kata/555eded1ad94b00403000071/train/javascript

function seriesSum(n) {
  let count = 0
  for (var result = 0, i = 1; count < n; i += 3) {
    result += 1/i;
    count++
  }
  return result.toFixed(2)
}

console.log(seriesSum(1))
// "1.00"

console.log(seriesSum(2))
// "1.25"

console.log(seriesSum(3))
// "1.39"

console.log(seriesSum(4))
// "1.49"

console.log(seriesSum(5))
// "1.57"

// another way
