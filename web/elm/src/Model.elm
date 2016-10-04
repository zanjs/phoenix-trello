module Model exposing (..)

import Routing exposing (..)
import Session.Model
import Registration.Model
import Home.Model
import Boards.Model
import Types exposing (..)


type alias Model =
    { route : Route
    , home : Home.Model.Model
    , currentBoard : Maybe Boards.Model.BoardModel
    , session : Session.Model.Model
    , registration : Registration.Model.Model
    , showBoardsList : Bool
    }


initialModel : Flags -> Routing.Route -> Model
initialModel flags route =
    { route = route
    , home = Home.Model.initialModel
    , currentBoard = Nothing
    , session = Session.Model.initialModel flags.jwt
    , registration = Registration.Model.initialModel
    , showBoardsList = False
    }
