module Main exposing (main)

import Decoder exposing (decoder)
import Html exposing (Html)
import Json.Decode as Decode exposing (Value)
import Model
import View


type alias Model =
    Result String Model.Model


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    model ! []


view : Model -> Html a
view model =
    case model of
        Err message ->
            Html.div []
                [ Html.p [] [ Html.text "I couldn't decode the JSON for this page! Whoops!" ]
                , Html.p [] [ Html.text "I got this error:", Html.text message ]
                ]

        Ok stuff ->
            View.view stuff


main : Program Value Model Msg
main =
    Html.programWithFlags
        { init =
            \flags -> Decode.decodeValue decoder flags ! []
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
