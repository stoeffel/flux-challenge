module SithList where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Sith

-- MODEL

type alias Model =
  { siths : List ( Sith.Model )
  }

init : Model
init = {
  siths = 
    [{ name = "Jorak Uln", homeworld = "Korriban" }
    ,{ name = "Skere Kaan", homeworld = "Coruscant" }]
  }

-- UPDATE

type Action = NoOp

update : Action -> Model -> Model
update action model =
  case action of
    NoOp -> model


-- VIEW
viewSith : (Sith.Model) -> Html
viewSith (model) =
  Sith.view  model

view : Signal.Address Action -> Model -> Html
view address model =
  let siths = List.map (viewSith) model.siths
  in
    ul [ class "css-slots" ] (siths)
