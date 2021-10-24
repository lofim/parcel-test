module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main : Program () Model Msg
main =
  Browser.sandbox { init = init, update = update, view = view }

type alias Model =
  { count : Int
  , errorMessage : String    
  }

init : Model
init =
  { count = 0
  , errorMessage = ""
  }

type Msg = Increment | Decrement

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment -> 
      updateIncrement model

    Decrement ->
      updateDecrement model

updateIncrement: Model -> Model
updateIncrement model =
  { model
  | count = handleThresholdValue(model.count + 1)
  , errorMessage = checkForError (model.count + 1)
  }

updateDecrement: Model -> Model
updateDecrement model =
  { model
  | count = model.count - 1
  , errorMessage = checkForError (model.count - 1)
  }

checkForError: Int -> String
checkForError count = if count >= 5 then "We have an error" else ""

handleThresholdValue : Int -> Int
handleThresholdValue value =
  if value >= 10 then
    -10
  else
    value

view : Model -> Html Msg
view model =
  div []
    [ div [] [ text model.errorMessage ]
    , button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (String.fromInt model.count) ]
    , button [ onClick Increment ] [ text "+" ]
    ]
