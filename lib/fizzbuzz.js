function Fizzbuzz() {
  var i = 0;
  while (i < 1000) {
    var s = '';
    if (i % 3 == 0) { s += 'Fizz'};
    if (i % 5 == 0) { s += 'Buzz'};
    if (s == '') { s = i };
    console.log(s);
    i += 1;
  }
}

Fizzbuzz()
