module Faker.Address where

import Array
import Random
import Random.Array
import Random.Extra
import Random.Maybe

{-| Generate a random city name

  city seed == "Westside"

-}
city : Random.Seed -> String
city seed =
  let
    prefix =
      Random.Extra.generateN  1 cityPrefixGen seed
        |> List.head
        |> Maybe.withDefault ""
    suffix =
      Random.Extra.generateN  1 citySuffixGen seed
        |> List.head
        |> Maybe.withDefault ""
  in
    prefix ++ suffix

cityPrefixGen : Random.Generator String
cityPrefixGen =
  Random.Extra.selectWithDefault "" cityPrefix

citySuffixGen : Random.Generator String
citySuffixGen =
  Random.Extra.selectWithDefault "" citySuffix

cityPrefix : List String
cityPrefix =
  ["North", "East", "West", "South", "New", "Lake", "Port"]

citySuffix : List String
citySuffix =
  ["town", "ton", "land", "ville", "berg", "burgh", "borough", "bury", "view", "port", "mouth", "stad", "furt", "chester", "mouth", "fort", "haven", "side", "shire"]
