module View exposing (..)

import Common.View exposing (warningMessage, backToHomeLink)
import Index.View exposing (indexView)
import Registration.View exposing (registrationView)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Model exposing (..)
import Messages exposing (..)
import Routing exposing (Route(..))

view : Model -> Html Msg
view model =
    section
        []
        [ headerView
        , div[]
            [ page model] 
        ]

headerView : Html Msg
headerView =
    header
        [ class "main-header" ]
        [ h1
            []
            [ text "Nav nav nav"]
        ]

page : Model -> Html Msg
page model =
    case model.route of
        HomeIndexRoute ->
            indexView model
        Registration ->
            registrationView model
        NotFoundRoute ->
            notFoundView


notFoundView : Html Msg
notFoundView =
    warningMessage
        "fa fa-meh-o fa-stack-2x"
        "Page Not Found"
        backToHomeLink