[![Build Status](https://travis-ci.org/jigargosar/elm-debug-extra.svg?branch=master)](https://travis-ci.org/jigargosar/elm-debug-extra)



## Quickly log a value in function chains

### Sample code


```elm

functionChain = foo >> bar >> baz

```

Using Core's Debug.log we can log a value with a string msg

```elm
import DebugExtra.Debug as Debug

functionChain = foo >> bar >> Debug.log "bar output" >> baz

```

And using tapLog we can transform the value before logging so only relevant information is logged. 

```elm
import DebugExtra.Debug as Debug exposing (tapLog)

functionChain = foo >> bar >> tapLog (.counterValue) "counter after bar" >> baz

```


Debug.tap allows us to modify the value and choose what function to execute.

```elm
import DebugExtra.Debug as Debug

doSomethingWithTheValue val = 
    if val==False then 
        Debug.log "Error:" 
    else 
        Debug.log "All is well" 

functionChain = foo >> bar >> Debug.tap (doSomethingWithTheValue) >> baz

```



