module Main exposing (main)

import Flags exposing (Flags)
import Html exposing (Html)
import Json.Encode as Encode


type alias Model =
    Flags


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    model ! []


view : Model -> Html a
view model =
    model |> Encode.encode 2 |> Html.text


main : Program Flags Model Msg
main =
    Html.programWithFlags
        { init = \flags -> flags ! []
        , update = update
        , view = view
        , subscriptions = \_ -> Sub.none
        }
