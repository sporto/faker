module Faker.Address where

import Random
import Faker.Utils as Utils

{-| Generate a random city name

  city seed == "Westside"

-}
city : Random.Seed -> String
city seed =
  let
    prefix =
      Utils.takeFrom seed cityPrefix
    suffix =
      Utils.takeFrom seed citySuffix
  in
    prefix ++ suffix

cityPrefix : List String
cityPrefix =
  ["North", "East", "West", "South", "New", "Lake", "Port"]

citySuffix : List String
citySuffix =
  ["town", "ton", "land", "ville", "berg", "burgh", "borough", "bury", "view", "port", "mouth", "stad", "furt", "chester", "mouth", "fort", "haven", "side", "shire"]
