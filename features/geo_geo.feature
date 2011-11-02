Feature: GeoGeo API
  Background:
    Given the following entries exist:
      |coordinates|
      |{lat: 0, lng:0}.geo_point|
      |{lat: 0, lng:0}.geo_point + [:N, 1.miles].vector|
      |{lat: 0, lng:0}.geo_point + [:N, 2.miles].vector|
      |{lat: 0, lng:0}.geo_point + [:N, 3.miles].vector|
      |{lat: 0, lng:0}.geo_point + [:N, 4.miles].vector|
      |{lat: 0, lng:0}.geo_point + [:N, 5.miles].vector|
      |{lat: 0, lng:0}.geo_point + [:N, 6.miles].vector|

  Scenario: Index
    Given I accept application/json
    When I go to /?loc[lat]=0&loc[lng]=0&distance=5
    Then the JSON response should have 5 entries
