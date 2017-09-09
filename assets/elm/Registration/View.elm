module Registration.View exposing (registrationView)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Messages exposing (..)
import Model exposing (..)


registrationView : Model -> Html Msg
registrationView model =
    Html.form [ id "registration-form" ]            
        [ h1 [] [ text "Sensational Signup Form" ]
        , label [ for "username-field" ] [ text "username: " ]
        , input [ id "username-field", type_("text"), value model.username ] []
        , label [ for "password"] [text "password: " ]
        , input [ id "password-field", type_("password"), value model.password ] []
        , button [ class "signup-button" ] [ onClick SendForm ] [ text "Sign Up!" ]
        ]