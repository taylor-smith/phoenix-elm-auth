module Registration.View exposing (registrationView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (..)
import Model exposing (..)


registrationView : Model -> Html Msg
registrationView model =
    div
        [ id "registration_index" ]
            [ h4 
                []
                [ text "Hello Registration World" ]
            ]