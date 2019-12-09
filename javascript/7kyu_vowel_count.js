// https://www.codewars.com/kata/54ff3102c1bad923760001f3/train/javascript

function getCount(str) {
  var vowelsCount = 0
  const vowels = ["a", "e", "i", "o", "u"]

  var str_arr = Array.from(str)
  
  str_arr.map((letter) => {
    if (vowels.includes(letter)) ++vowelsCount
  })

  return vowelsCount
}

console.log(getCount("abracadabra"))
// 5

// refactored
function getCount1(str) {
  var vowelsCount = 0
  const vowels = ["a", "e", "i", "o", "u"]

  Array.from(str).map((letter) => {
    if (vowels.includes(letter)) ++vowelsCount
  })

  return vowelsCount
}

console.log(getCount1("abracadabra"))
// 5

// another way
function getCount2(str) {
  return (str.match(/[aeiou]/ig) || []).length;
}

console.log(getCount1("abracadabra"))
// 5