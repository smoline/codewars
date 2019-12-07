// https://www.codewars.com/kata/how-many-lightsabers-do-you-own/train/javascript

function howManyLightsabersDoYouOwn(name) {
  return name === "Zach" ? 18 : 0
}

console.log(howManyLightsabersDoYouOwn())
// 0

console.log(howManyLightsabersDoYouOwn("Adam"))
// 0

console.log(howManyLightsabersDoYouOwn("Zach"))
// 18