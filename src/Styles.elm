module Styles exposing (Styles(..), sheet)

import Style exposing (..)


type Styles
    = Container
    | Content


sheet : StyleSheet Styles variation
sheet =
    stylesheet
        [ style Container []
        , style Content []
        ]
