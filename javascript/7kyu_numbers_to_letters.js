// https://www.codewars.com/kata/numbers-to-letters/train/javascript

function switcher(x) {
  const code = {
    1: 'z', 2: 'y', 3: 'x', 4: 'w', 5: 'v', 6: 'u', 7: 't', 8: 's', 9: 'r', 10: 'q',
    11: 'p', 12: 'o', 13: 'n', 14: 'm', 15: 'l', 16: 'k', 17: 'j', 18: 'i', 19: 'h', 20: 'g',
    21: 'f', 22: 'e', 23: 'd', 24: 'c', 25: 'b', 26: 'a', 27: '!', 28: '?', 29: ' '
  }
  return x.map(number => code[number * 1]).join('')
}

console.log(switcher(['24', '12', '23', '22', '4', '26', '9', '8']))
// 'codewars'

console.log(switcher(['25', '7', '8', '4', '14', '23', '8', '25', '23', '29', '16', '16', '4']))
// 'btswmdsbd kkw'

console.log(switcher(['4', '24']))
// 'wc'

// another way
const switcher1 = x => x.reduce((a, b) => a + " ?!abcdefghijklmnopqrstuvwxyz"[29 - b], "")

console.log(switcher1(['24', '12', '23', '22', '4', '26', '9', '8']))
// 'codewars'

console.log(switcher1(['25', '7', '8', '4', '14', '23', '8', '25', '23', '29', '16', '16', '4']))
// 'btswmdsbd kkw'

console.log(switcher1(['4', '24']))
// 'wc'

// better way
function switcher2(x) {
  return x.map(a => {
    if (a == 27) return "!";
    if (a == 28) return "?";
    if (a == 29) return " ";
    return String.fromCharCode(97 + 26 - parseInt(a));

  }).join('');
}

console.log(switcher2(['24', '12', '23', '22', '4', '26', '9', '8']))
// 'codewars'

console.log(switcher2(['25', '7', '8', '4', '14', '23', '8', '25', '23', '29', '16', '16', '4']))
// 'btswmdsbd kkw'

console.log(switcher2(['4', '24']))
// 'wc'