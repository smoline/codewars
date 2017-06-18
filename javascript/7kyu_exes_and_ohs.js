// https://www.codewars.com/kata/exes-and-ohs/train/javascript

function XO(str) {
  var sum = 0
  for (var i = 0; i < str.length; i++) {
    if (str[i].toLowerCase() === "o") {
      sum++
    } else if (str[i].toLowerCase() === "x") {
      sum--
    }
  }
  return sum === 0
}


console.log(XO("ooxx"))
// true

console.log(XO("xooxx"))
// false

console.log(XO("ooxXm"))
// true

console.log(XO("zpzpzpp"))
// true

console.log(XO("zzoo"))
// false
