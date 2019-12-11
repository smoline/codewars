// https://www.codewars.com/kata/5592e3bd57b64d00f3000047/train/javascript

function findNb(m) {
  for (n = 0; m > 0; n++) {
    m = m - Math.pow(n, 3)
  }
  return m ? -1 : n - 1
}

console.log(findNb(1071225))
// 45

console.log(findNb(91716553919377))
// -1

console.log(findNb(4183059834009))
// 2022

console.log(findNb(24723578342962))
// -1

console.log(findNb(135440716410000))
// 4824

console.log(findNb(40539911473216))
// 3568

// another way
function findNb1(m) {
  var n = 0
  while (m > 0) m -= ++n ** 3
  return m ? -1 : n
}

console.log(findNb1(1071225))
// 45

console.log(findNb1(91716553919377))
// -1

console.log(findNb1(4183059834009))
// 2022

console.log(findNb1(24723578342962))
// -1

console.log(findNb1(135440716410000))
// 4824

console.log(findNb1(40539911473216))
// 3568