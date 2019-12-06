// https://www.codewars.com/kata/double-sort/train/javascript

function dbSort(a) {
  var numbers = []
  var strings = []

  a.forEach(item => {
    if (typeof item === "number") numbers.push(item)
    else strings.push(item)
  })

  let numArr = numbers.sort((a, b) => a - b)

  return numArr.concat(strings.sort())
}

console.log(dbSort([6, 2, 3, 4, 5]))
// [2, 3, 4, 5, 6]

console.log(dbSort([14, 32, 3, 5, 5]))
// [3, 5, 5, 14, 32]

console.log(dbSort([1, 2, 3, 4, 5]))
// [1, 2, 3, 4, 5]

console.log(dbSort(["Banana", "Banana", "Orange", "Apple", "Mango", 0, 2, 2]))
// [0, 2, 2, "Apple", "Banana", "Mango", "Orange"]

console.log(dbSort(["C", "W", "W", "W", 1, 2, 0]))
// [0, 1, 2, "C", "W", "W", "W"]


// another way
function dbSort2(a) {
  let num = a.filter(x => typeof x == 'number').sort((a, b) => a - b)
  let string = a.filter(x => typeof x == 'string').sort()
  return num.concat(string)
}

console.log(dbSort2([6, 2, 3, 4, 5]))
// [2, 3, 4, 5, 6]

console.log(dbSort2([14, 32, 3, 5, 5]))
// [3, 5, 5, 14, 32]

console.log(dbSort2([1, 2, 3, 4, 5]))
// [1, 2, 3, 4, 5]

console.log(dbSort2(["Banana", "Banana", "Orange", "Apple", "Mango", 0, 2, 2]))
// [0, 2, 2, "Apple", "Banana", "Mango", "Orange"]

console.log(dbSort2(["C", "W", "W", "W", 1, 2, 0]))
// [0, 1, 2, "C", "W", "W", "W"]


