// https://www.codewars.com/kata/sum-the-strings/train/javascript

function sumStr(a, b) {
  return String(+a + +b)
}

console.log(sumStr("4", "5"))
// "9"

console.log(sumStr("34", "5"))
// "39"

console.log(sumStr("", "5"))
// "5"