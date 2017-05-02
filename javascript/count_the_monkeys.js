// https://www.codewars.com/kata/count-the-monkeys/train/javascript

function monkeyCount(n) {
 var monkeys = [];
 for(var i = 1; i <= n; i++) {
   monkeys.push(i);
 }
 return monkeys;
}

console.log(monkeyCount(5))
// [1, 2, 3, 4, 5]
