module Main exposing (main)

import Flags exposing (Flags)
import Html exposing (Html)
import Json.Decode as Decode exposing (Value)


type alias Model =
    Result String Flags


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
            Html.text <| toString stuff


main : Program Value Model Msg
main =
    Html.programWithFlags
        { init =
            \flags -> Decode.decodeValue Flags.flags flags ! []
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
