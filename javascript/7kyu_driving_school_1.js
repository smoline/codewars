// https://www.codewars.com/kata/driving-school-series-number-1/train/javascript

function passed(list) {
  let passed = 0
  let result = 0
  for (let i = 0; i < list.length; i++) {
    if (list[i] < 19) { result += list[i]; passed++ }
  }
  if (passed === 0) { return 'No pass scores registered.' }
  return Math.round(result / passed)
}

console.log(passed([10, 10, 10, 18, 20, 20]))
// 12

console.log(passed([21, 22, 24]))
// 'No pass scores registered.'

console.log(passed([3, 22, 9, 13, 20, 18, 2, 14, 20, 8, 23, 12, 7, 21, 21, 19, 20, 11, 18, 7, 13, 22, 11, 20, 9]))
// 10

console.log(passed([19, 16, 8, 11, 25, 10, 29, 22, 23]))
// 11

// another way
function passed1(list) {
  var passed = 0
  var result = 0
  list.forEach(score => {
    if (score < 19) { result += score; passed++ }
  })

  return passed === 0 ? 'No pass scores registered.' : Math.round(result / passed)
}

console.log(passed1([10, 10, 10, 18, 20, 20]))
// 12

console.log(passed1([21, 22, 24]))
// 'No pass scores registered.'

console.log(passed1([3, 22, 9, 13, 20, 18, 2, 14, 20, 8, 23, 12, 7, 21, 21, 19, 20, 11, 18, 7, 13, 22, 11, 20, 9]))
// 10

console.log(passed1([19, 16, 8, 11, 25, 10, 29, 22, 23]))
// 11
