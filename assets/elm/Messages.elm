module Messages exposing (..)

import Http
import Model exposing (..)
import Navigation
import Routing exposing (Route)

type Msg
    = UrlChange Navigation.Location
    | NavigateTo Route