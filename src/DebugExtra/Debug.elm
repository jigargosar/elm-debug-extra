module DebugExtra.Debug exposing (tap, tapLog)


tap : (value -> ignore) -> value -> value
tap tapperFunction value =
    let
        _ =
            tapperFunction value
    in
        value


tapLog =
    Debug.log "tapped value"
