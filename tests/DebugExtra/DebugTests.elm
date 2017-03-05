module DebugExtra.DebugTests exposing (..)

import DebugExtra.Debug exposing (tap, tapLog)
import Expect
import Test exposing (Test, describe, test)


all : Test
all =
    describe "debug extra test suite"
        [ tapTests
        ]


someValue =
    "foo"


tapTests =
    describe "tap tests"
        [ test "tap returns same value with identity function"
            (\() ->
                Expect.equal (tap identity someValue) someValue
            )
        , test "tap returns same value with debug function"
            (\() ->
                Expect.equal (tapLog identity "someValue =" someValue) someValue
            )
        ]
