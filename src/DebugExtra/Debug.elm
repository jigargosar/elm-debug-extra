module Lib.DebugExtra exposing (tap)

tap: (value -> ignore) -> value -> value
tap fn value =
    let
        _ =
            fn value
    in
        value
