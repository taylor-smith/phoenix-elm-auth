module Model exposing (..)

import Routing exposing (Route)
import Navigation exposing (..)

type alias Model =
    { route: Route
    , history: List Navigation.Location
    }

initialModel : Route -> Model
initialModel route =
    { route = route
    , history = []
    }