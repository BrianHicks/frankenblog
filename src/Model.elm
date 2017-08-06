module Model exposing (..)

import Date exposing (Date)
import Json.Decode exposing (Value)


type alias Model =
    Page


{-| hmm... I don't like this but it seems to be required for the decoders. What
TODO, what TODO...
-}
type alias SingleBody =
    { links : Links
    , dates : Dates
    , title : String
    , slug : String
    , markdown : String
    , summary : String
    , site : Site
    }


type Page
    = Single SingleBody


{-| TODO: these strings should probably be some kind of parsed URL
-}
type alias Links =
    { permalink : String
    , html : String
    , json : String
    }


type alias Dates =
    { published : Maybe Date
    , modified : Date
    }


type alias Site =
    { title : String
    , menus : Value -- TODO
    , date : Dates
    , params : Value -- TODO
    }
