module App where

import StartApp.Simple exposing (start)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import SithList exposing (init, update, view)

-- MAIN

main =
  StartApp.Simple.start
    { model = init
    , update = update
    , view = view
    }
