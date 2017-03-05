## Quickly log a value in function chains

### Sample code


```elm

functionChain = foo >> bar >> baz

```

Now lets tapLog the output of bar, without affecting baz.

```elm
import DebugExtra.Debug as Debug

functionChain = foo >> bar >> Debug.tapLog "bar output =" >> baz

```



or better yet, we can directly use Debug.tapLog.


```elm
import DebugExtra.Debug as Debug

doSomethingWithTheValue val = 
    if val==False then 
        Debug.log "Error:" 
    else 
        Debug.log "All is well" 

functionChain = foo >> bar >> Debug.tap (doSomethingWithTheValue) >> baz

```
Debug.tap allows us to modify the value and choose what function to execute.


