port module Main exposing (..)

import DebugExtra.DebugTests
import Json.Encode exposing (Value)
import Test exposing (..)
import Test.Runner.Node exposing (TestProgram, run)


main : TestProgram
main =
    run emit all


all : Test
all =
    describe "Combine suite" [ DebugExtra.DebugTests.all ]


port emit : ( String, Value ) -> Cmd msg
