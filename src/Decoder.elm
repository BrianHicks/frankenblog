module Decoder exposing (decoder)

import Json.Decode exposing (..)
import Json.Decode.Extra exposing (date)
import Json.Decode.Pipeline exposing (..)
import Model exposing (Dates, Links, Model, Page(..), Site)


decoder : Decoder Model
decoder =
    page


page : Decoder Page
page =
    let
        single : Decoder Page
        single =
            decode Model.SingleBody
                |> required "links" links
                |> required "dates" dates
                |> required "title" string
                |> required "slug" string
                |> required "markdown" string
                |> required "summary" string
                |> required "site" site
                |> map Single
    in
    field "kind" string
        |> andThen
            (\kind ->
                case kind of
                    "single" ->
                        single

                    _ ->
                        fail <| "I don't know how to decode a " ++ kind
            )


links : Decoder Links
links =
    decode Links
        |> required "permalink" string
        |> required "html" string
        |> required "json" string


dates : Decoder Dates
dates =
    decode Dates
        |> optional "published" (map Just date) Nothing
        |> required "modified" date


site : Decoder Site
site =
    decode Site
        |> required "title" string
        |> required "menus" value
        |> required "dates" dates
        |> required "params" value
