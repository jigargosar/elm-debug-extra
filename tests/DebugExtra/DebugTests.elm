module DebugExtra.DebugTests exposing (..)

import DebugExtra.Debug exposing (tap, tapLog)
import Expect
import Test exposing (Test, describe, test)


all : Test
all =
    describe "debug extra test suite"
        [ tapTests
        ]


nameValue =
    { first = "Jigar", last = "Gosar" }


tapTests =
    describe "tap tests"
        [ test "tap returns same value with identity function"
            (\() ->
                Expect.equal (tap identity nameValue) nameValue
            )
        , test "tapLog returns same value with identity function"
            (\() ->
                Expect.equal (tapLog "name =" identity nameValue) nameValue
            )
        , test "tapLog applies the supplied function but returns origal value "
            (\() ->
                Expect.equal (tapLog "First Name =" (.first) nameValue) nameValue
            )
        ]
