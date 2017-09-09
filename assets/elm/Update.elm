module Update exposing (..)

import Model exposing (..)
import Messages exposing (..)
import Navigation
import Routing exposing (Route(..), parse, toPath)

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of 
        UrlChange location ->
            let
                currentRoute =
                    parse location
            in
                urlUpdate { model | route = currentRoute }
        
        NavigateTo route ->
            model ! [ Navigation.newUrl <| toPath route ]

urlUpdate : Model -> ( Model, Cmd Msg )
urlUpdate model =
    case model.route of
        -- HomeIndexRoute ->
            -- case model.contactList of
                -- NotRequested ->
                    -- model ! [ fetch 1 "" ]

                -- _ ->
                    -- model ! []

        -- ShowContactRoute id ->
        --     { model | contact = Requesting } ! [ fetchContact id ]

        _ ->
            model ! []