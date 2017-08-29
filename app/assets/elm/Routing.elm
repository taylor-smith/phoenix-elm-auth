module Routing exposing (..)

import Navigation
import UrlParser exposing (..)

type Route
    = HomeIndexRoute
    | Registration
    | NotFoundRoute

toPath : Route -> String
toPath route =
    case route of
        HomeIndexRoute ->
            "/"
        
        Registration ->
            "/registration"
        
        NotFoundRoute ->
            "/404"

matchers: Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeIndexRoute <| s ""
        ]

parse : Navigation.Location -> Route
parse location =
    case UrlParser.parsePath matchers location of
        Just route ->
            route
        
        Nothing ->
            NotFoundRoute