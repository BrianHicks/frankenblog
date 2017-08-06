module View exposing (..)

import Html exposing (..)
import Model exposing (Model)


view : Model -> Html a
view model =
    Html.div []
        [ Html.p [] [ Html.text "yo, I got this wack JSON (but I parsed it OK)" ]
        , Html.p [] [ Html.text <| toString model ]
        ]
