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
    , div [] [ text "Action" ]
    , div [] [ text myOp ]
    ]


type OpType = 
    Test
    | Remove
    | Add
    | Replace
    | Move
    | Copy

type OpVal =
    String
    | Int
    | Bool

type alias OpAttr = { from : Maybe String, path : Maybe String, value : Maybe OpVal }

type alias Op = { action : OpType, attr : OpAttr }

doOp : Op -> String
doOp myOp =
    case myOp.action of
        Test ->
            "tested!"
        Remove ->
            "removed! with: " ++ Maybe.withDefault "" myOp.attr.path
        Add ->
            "added!"
        Replace ->
            "replaced!"
        Move ->
            "moved!"
        Copy ->
            "copied!"

myOp : String
myOp =
    doOp { action = Remove, attr = { from = Nothing, path = Just "moo/cow", value = Nothing } }