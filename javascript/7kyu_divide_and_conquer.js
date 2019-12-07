// https://www.codewars.com/kata/divide-and-conquer/train/javascript

function divCon(x) {
  let strings = []
  let numbers = []
  let result = 0
  x.forEach(item => {
    if (typeof item === 'number') numbers.push(item)
    else strings.push(item)
  })

  numbers.forEach(num => result += num)
  strings.forEach(item => result -= Number(item))
  return result
}

console.log(divCon([9, 3, '7', '3']))
// 2

console.log(divCon(['5', '0', 9, 3, 2, 1, '9', 6, 7]))
// 14

console.log(divCon(['3', 6, 6, 0, '5', 8, 5, '6', 2, '0']))
// 13

console.log(divCon(['6', 2, '6', 0, 4, '9', 7, 3, '7', 3, '8']))
// -17

// another way
function divCon1(x) {
  return x.reduce((a, b) => a + (0 + b == b ? b : -+b), 0)
}

console.log(divCon1([9, 3, '7', '3']))
// 2

console.log(divCon1(['5', '0', 9, 3, 2, 1, '9', 6, 7]))
// 14

console.log(divCon1(['3', 6, 6, 0, '5', 8, 5, '6', 2, '0']))
// 13

console.log(divCon1(['6', 2, '6', 0, 4, '9', 7, 3, '7', 3, '8']))
// -17



