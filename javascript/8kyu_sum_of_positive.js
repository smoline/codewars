// https://www.codewars.com/kata/sum-of-positive/train/javascript

function positiveSum(array) {
  sum = 0;
  array.forEach(function(num) {
    if (num > 0) {
      sum += num;
        }
    });
  return sum;
}

console.log(positiveSum([1,2,3,4,5]))
// 15
