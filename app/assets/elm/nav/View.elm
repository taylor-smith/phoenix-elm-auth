module Nav.View exposing (navView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)
import Navigation


navView : Model -> Html msg
navView model =
    div []
        [ h1 [] [ text "Pages" ]
        , ul [] (List.map viewLink [ "registration", "cats", "dogs", "elephants", "fish" ])
        , h1 [] [ text "History" ]
        , ul [] (List.map viewLocation model.history)
        ]

viewLink : String -> Html msg
viewLink name =
    li [] [ a [ href ("/#" ++ name) ] [ text name ] ]

viewLocation : Navigation.Location -> Html msg
viewLocation location =
    li [] [ text (location.pathname) ]