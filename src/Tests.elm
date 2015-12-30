module Tests where

import ElmTest exposing (..)
import Regex
import Faker.Address as Address
import Random

seed =
  Random.initialSeed 2

testCity: Test
testCity =
  test "Address"
    (assertEqual "Southhaven" (Address.city seed))
    --(assert (Regex.contains (Regex.regex "\\D+") Address.city))

-- suite : String -> List Test -> Test
all: Test
all = 
  suite "Tests"
    [ 
      testCity
    ]
