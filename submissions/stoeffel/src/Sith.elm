module Sith where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

-- MODEL

type alias Model =
  { name : String
  , homeworld : String
  }

-- UPDATE

type Action = NoOp

update : Action -> Model -> Model
update action model =
  case action of
    NoOp -> model

-- VIEW

view :  Model -> Html
view model =
  li [ class "css-slot" ]
    [ h3 [] [ text (model.name )]
    , h6 [] [ text ("Homeworld: " ++ model.homeworld) ]
    ]
