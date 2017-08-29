module Index.View exposing (indexView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (..)
import Model exposing (..)


indexView : Model -> Html Msg
indexView model =
    div
        [ id "home_index" ]
            [ h4 
                []
                [ text "Hello World" ]
            ]