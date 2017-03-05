module DebugExtra.DebugTests exposing (..)

import DebugExtra.Debug exposing (tap)
import Expect
import Test exposing (Test, describe, test)


all : Test
all =
    describe "parsers suite"
        [ firstSuite
        ]


firstSuite =
    describe "tap tests"
        [ test "tap returns same value "
            (\() -> Expect.equal (tap identity "foo") "foo")
        ]
