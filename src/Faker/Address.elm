module Faker.Address where

import Random

{-| Generate a random city name

  city seed == "Westside"

-}
--city : Random.Seed -> String
city seed =
  let
    prefix =
      takeFrom seed cityPrefix
    suffix =
      takeFrom seed citySuffix
  in
    prefix ++ suffix

takeFrom seed list =
  let
    total =
      List.length list
    generator =
      Random.int 0 (total - 1)
    index =
        Random.generate generator seed
        |> fst
  in
    list 
      |> List.drop (index - 1)
      |> List.head
      |> Maybe.withDefault ""


--cityPrefixGen : Random.Generator String
--cityPrefixGen =
--  Random.Extra.selectWithDefault "" cityPrefix

--citySuffixGen : Random.Generator String
--citySuffixGen =
--  Random.Extra.selectWithDefault "" citySuffix

cityPrefix : List String
cityPrefix =
  ["North", "East", "West", "South", "New", "Lake", "Port"]

citySuffix : List String
citySuffix =
  ["town", "ton", "land", "ville", "berg", "burgh", "borough", "bury", "view", "port", "mouth", "stad", "furt", "chester", "mouth", "fort", "haven", "side", "shire"]
