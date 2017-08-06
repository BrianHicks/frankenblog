module Model exposing (..)

import Date exposing (Date)


type alias Model =
    Page


type Page
    = Page
        { links : Links
        , dates : Dates
        , title : String
        , slug : String
        , markdown : String
        , summary : String
        , site : Site
        }


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
    , data : Value -- TODO
    , params : Value -- TODO
    }
