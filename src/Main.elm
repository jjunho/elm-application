module Main exposing (main)

import Browser
import Browser.Navigation exposing (Key)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Url


type alias Model =
    {}


type Msg
    = NoOp


main : Program () Model Msg
main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        , onUrlChange = onUrlChange
        , onUrlRequest = onUrlRequest
        }


onUrlRequest : Browser.UrlRequest -> Msg
onUrlRequest req =
    NoOp


onUrlChange : Url.Url -> Msg
onUrlChange url =
    NoOp


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )


view : Model -> Browser.Document Msg
view model =
    { title = ""
    , body = [ div [] [] ]
    }


init : () -> Url.Url -> Key -> ( Model, Cmd Msg )
init flags url key =
    ( {}, Cmd.none )
