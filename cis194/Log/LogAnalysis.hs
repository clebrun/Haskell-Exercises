{-# OPTIONS_GHC -Wall #-}
module LogAnalysis where

import Log

parseMessageType :: Char -> Int -> MessageType
parseMessageType c level
  | c == 'I' = Info level
  | c == 'W' = Warning level
  | c == 'E' = Error level

parseMessage :: String -> LogMessage
parseMessage m = 
  let ws         = words m
      mTypeChar  = (read::String->Char) $ head ws
      mTypeLevel = (read::String->Int) $ ws !! 1
      mType      = parseMessageType mTypeChar mTypeLevel
      tStamp     = (read::String->Int) $ ws !! 2
      message    = unwords $ drop 3 ws
  in LogMessage mType tStamp message
