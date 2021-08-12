+++
date = "2018-06-12"
title = "Collatz Conjecture Playground"
description = "Play around with the Collatz conjecture."
image = "img/projects/collatz.png"
tags = ["Collatz Conjecture", "Idyll", "Math"]
+++

{{< collatz >}}

This was written using [the Idyll markup language](https://idyll-lang.org/) for creating interactive documents. The Idyll code to create this page is:

```
Starting value: [var name:"number" value:10 /]  [Range value:number min:1 max:100 /] [Display value:number /]

[var name:"createJson" value:`function(max, step, number) {
var data = [];
function iterate(max, step, number) {
var newNumber;
if (number % 2 === 0) {
   newNumber = number / 2;
} else {
   newNumber = 3*number + 1;
}
if (newNumber !== 1 && step < max) {
   data.push({
       x: step,
       y: newNumber
   });
   iterate(max, step + 1, newNumber);
} else {
   data.push({
       x: step,
       y: newNumber
   });
}
}
data.push({
x: step,
y: number
});
iterate(max, step + 1, number);
return data;
}` /]

Found solution in: [Display value:`createJson(200, 0, number).length - 1` /] steps

[Chart data:`createJson(200, 0, number)` /]

[Table data:`createJson(200, 0, number)` /]
```
