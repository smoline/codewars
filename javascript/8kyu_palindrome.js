// https://www.codewars.com/kata/is-it-a-palindrome/train/javascript

function isPalindrome(x) {
  x = x.toLowerCase()
  x_reverse = x.split("").reverse().join('')
  return x === x_reverse
}

console.log(isPalindrome("racecar"))
// true

console.log(isPalindrome("something"))
// false

console.log(isPalindrome("Dad"))
// true

// another way
function isPalindrome1(x) {
  return x.split("").reverse().join("").toLowerCase() === x.toLowerCase() ? true : false
}

console.log(isPalindrome1("racecar"))
// true

console.log(isPalindrome1("something"))
// false

console.log(isPalindrome1("Dad"))
// true