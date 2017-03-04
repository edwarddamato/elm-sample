module AppView exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import SharedStyles exposing (..)

{ id, class, classList } =
    appNamespace

main : Html a
main =
  div []
    [ Html.node "link" [ Html.Attributes.rel "stylesheet", Html.Attributes.href "app.css" ] [] 
    ,h1 [ class [ SharedStyles.Title ] ] [ text "Hello, there!" ]
    , div [] [ text "moo2" ]
    ]