module DebugExtra.Debug exposing (tap)


tap : (value -> ignore) -> value -> value
tap tapperFunction value =
    let
        _ =
            tapperFunction value
    in
        value


tapLog =
    Debug.log >> tap
