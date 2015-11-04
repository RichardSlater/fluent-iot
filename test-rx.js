var Rx = require('rx');
var Tail = require('tail').Tail;
var tail = new Tail("keydata.txt");
var lines = Rx.Observable.fromEvent(tail, 'line')
  .takeUntil(Rx.Observable.fromEvent(tail, 'error'))
  .subscribe(
    console.log,
    err => console.log("Error: %s", err),
    () => console.log("Completed"));