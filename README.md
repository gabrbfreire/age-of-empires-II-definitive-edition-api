# Age of Empires II:DE API

API available at : https://aoe2de-api.herokuapp.com

Provides data about: buildings, civilizations, technologies and units.

Technologies:
* Java
* Spring(Spring Boot and Spring Data)
* MySQL
* Swagger

## Utilization
- ### GET `/buildings`
  Gets a list of all buildings in alphabetical order
 
- ### GET `/buildings/{name:string}`
  Gets a list of all buildings in alphabetical order that match the input
  
  Example call `https://aoe2de-api.herokuapp.com/civilizations/aztecs`

```
[
  {
    "name": "Aztecs",
    "introduced_in": "The Conquerors",
    "architecture": "Native American",
    "continent": "Central/North America",
    "focus": "Infantry, Monks",
    "unique_units": "Jaguar Warrior",
    "unique_technologies": "Atlatl, Garland Wars",
    "unique_buildings": null
  }
]
```
