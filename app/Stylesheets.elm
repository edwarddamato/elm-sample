port module Stylesheets exposing (..)

import Css.File exposing (CssFileStructure, CssCompilerProgram)
import AppStyles as App


port files : CssFileStructure -> Cmd msg


fileStructure : CssFileStructure
fileStructure =
    Css.File.toFileStructure
        [ ( "app.css", Css.File.compile [ App.css ] ) ]


main : CssCompilerProgram
main =
    Css.File.compiler files fileStructure