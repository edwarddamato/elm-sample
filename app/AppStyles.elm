module AppStyles exposing (css)

import Css exposing (..)
import Css.Elements exposing (..)
import Css.Namespace exposing (namespace)
import SharedStyles exposing (..)

css =
    (stylesheet << namespace appNamespace.name)
    [ each [ Css.Elements.html, body ]
      [ margin zero
      , padding zero
      ]
    , body
        [ fontFamilies [ "Source Sans Pro", "Trebuchet MS", "Lucida Grande", "Bitstream Vera Sans", "Helvetica Neue" ] ]
    , class Title
        [ color (rgb 135 135 135) ]
    ]