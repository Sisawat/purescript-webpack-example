module Main where

import Prelude (bind, discard, ($))
-- import Control.Monad.Eff
import Graphics.Canvas (getCanvasElementById, getContext2D)
import Graphics.Canvas.Free (fill, rect, runGraphics, setFillStyle)

main = do
  canvas <- getCanvasElementById "canvas"
  context <- getContext2D canvas

  runGraphics context $ do
    setFillStyle "#00FFFF"
    rect { x: 0, y: 0, w: 400, h: 600 }
    fill
