// https://www.codewars.com/kata/square-every-digit/train/javascript

function squareDigits(num){
  var result = String(num).split('').map(function (n) {
    return n * n
  }).join('')

  return parseInt(result)
}

console.log(squareDigits(9119))
// 811181
