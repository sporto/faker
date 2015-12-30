module Faker.Utils where

import Random

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
