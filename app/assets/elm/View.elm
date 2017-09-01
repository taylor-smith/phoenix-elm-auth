module View exposing (..)

import Common.View exposing (warningMessage, backToHomeLink)
import Index.View exposing (indexView)
import Nav.View exposing (navView)
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
        [ headerView model
        , div[]
            [ page model ] 
        ]

headerView : Model -> Html Msg
headerView model =
    header
        [ class "main-header" ]
        [
            div[]
                [ navView model ]
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