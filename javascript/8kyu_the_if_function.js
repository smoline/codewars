// https://www.codewars.com/kata/count-the-monkeys/train/javascript

function _if(bool, func1, func2) {
  (bool ? func1() : func2())
}

console.log(_if(true, function(){console.log("True")}, function(){console.log("False")}))
// "True"
