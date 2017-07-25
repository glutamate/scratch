{-# LANGUAGE OverloadedStrings #-}

import Dashdo.Serve
import Dashdo.Elements
import Dashdo.Types
import Data.Text
import Lucid
import Data.Monoid

nameDD :: Dashdo Text
nameDD
  = Dashdo
      "Albus Dumbledore"
      ( const (return ()) )
      nameRender

nameRender nm () = wrap "" $ do
  "Hello " <> toHtml nm
  textInput id

main = runDashdo nameDD
