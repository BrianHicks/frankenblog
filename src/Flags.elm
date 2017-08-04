module Flags exposing (Flags, flags)

import Json.Decode exposing (..)


type alias Flags =
    { kind : String
    , links : Links
    , dates : Dates
    , title : String
    , slug : String
    , markdown : String
    , summary : String
    , site : Site
    }


flags : Decoder Flags
flags =
    map8 Flags
        (field "kind" string)
        (field "links" links)
        (field "date" dates)
        (field "title" string)
        (field "slug" string)
        (field "markdown" string)
        (field "summary" string)
        (field "site" site)


type alias Links =
    { permalink : String
    , html : String
    , json : String
    }


links : Decoder Links
links =
    map3 Links
        (field "permalink" string)
        (field "html" string)
        (field "json" string)


type alias Dates =
    { published : Maybe String
    , modified : String
    }


dates : Decoder Dates
dates =
    map2 Dates
        (maybe <| field "published" string)
        (field "modified" string)


type alias Site =
    { title : String
    , menus : Value -- TODO
    , date : Dates
    , data : Value -- TODO
    , params : Value -- TODO
    }


site : Decoder Site
site =
    map5 Site
        (field "title" string)
        (field "menus" value)
        (field "date" dates)
        (field "data" value)
        (field "params" value)
