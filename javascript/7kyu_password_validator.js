// https://www.codewars.com/kata/password-validator/train/javascript

function password(str) {
  return /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)\S{8,}$/.test(str)
}

console.log(password("Abcd1234"))
// true

console.log(password("Abcd123"))
// false

console.log(password("abcd1234"))
// false

console.log(password("AbcdefGhijKlmnopQRsTuvwxyZ1234567890"))
// true

console.log(password("ABCD1234"))
// false

console.log(password("Ab1!@#$%^&*()-_+={}[]|\:;?/>.<,"))
// true

console.log(password("!@#$%^&*()-_+={}[]|\:;?/>.<,"))
// false

// another way
function password1(str) {
  return str.length >= 8 &&
    /[a-z]/.test(str) &&
    /[A-Z]/.test(str) &&
    /\d/.test(str);
}

console.log(password1("Abcd1234"))
// true

console.log(password1("Abcd123"))
// false

console.log(password1("abcd1234"))
// false

console.log(password1("AbcdefGhijKlmnopQRsTuvwxyZ1234567890"))
// true

console.log(password1("ABCD1234"))
// false

console.log(password1("Ab1!@#$%^&*()-_+={}[]|\:;?/>.<,"))
// true

console.log(password1("!@#$%^&*()-_+={}[]|\:;?/>.<,"))
// false