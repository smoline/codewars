// https://www.codewars.com/kata/is-this-a-triangle/train/javascript

function isTriangle(a,b,c) {
  if (a + b <= c || a + c <= b || b + c <= a) {
    return false;
  } else {
    return true;
  }
}

console.log(isTriangle(1,2,2))
// true

console.log(isTriangle(7,2,2))
// false
