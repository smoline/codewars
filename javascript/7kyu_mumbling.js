// https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/javascript

function accum(s) {
  let arr = Array.from(s)
  for (let i = 0; i < arr.length; i++) {
    arr[i] = arr[i].toUpperCase() + arr[i].toLowerCase().repeat(i)
  }
  return arr.join("-")
}

console.log(accum("ZpglnRxqenU"))
// "Z-Pp-Ggg-Llll-Nnnnn-Rrrrrr-Xxxxxxx-Qqqqqqqq-Eeeeeeeee-Nnnnnnnnnn-Uuuuuuuuuuu"

console.log(accum("NyffsGeyylB"))
// "N-Yy-Fff-Ffff-Sssss-Gggggg-Eeeeeee-Yyyyyyyy-Yyyyyyyyy-Llllllllll-Bbbbbbbbbbb"