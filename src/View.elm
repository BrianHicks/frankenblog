module View exposing (..)

import Element exposing (..)
import Element.Attributes exposing (..)
import Html exposing (Html)
import Model exposing (Model, Page(..))
import Styles exposing (Styles(..), sheet)


view : Model -> Html a
view (Single model) =
    Element.viewport
        sheet
    <|
        el Container
            [ center
            , padding 25
            ]
            (el Content [] (text model.markdown))
