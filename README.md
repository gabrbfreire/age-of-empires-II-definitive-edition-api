# Age of Empires II:DE API

API available at : https://aoe2de-api.herokuapp.com

Provides data about: buildings, civilizations, technologies and units.

Build with:
* Java
* Spring(Spring Boot and Spring Data)
* MySQL
* Swagger

## Utilization
- ### GET `/buildings`
  Gets a list of all buildings in alphabetical order
  
  Call `https://aoe2de-api.herokuapp.com/buildings`
 
- ### GET `/buildings/{name:string}`
  Gets a list of all buildings in alphabetical order that match the input
  
  Example call `https://aoe2de-api.herokuapp.com/buildings/castle`

```
[
  {
    "name": "Castle",
    "description": "Used to create your unique unit, build Trebuchets, and improve villagers and buildings.",
    "introduced_in": "The Age of Kings",
    "age": 3,
    "use": "Train unique units and siege weapons, Research technologies, Attack enemies",
    "cost": "650S",
    "construction_time": 200,
    "size": "4x4",
    "hit_points": 4800,
    "garrison": 20,
    "attack": "11 pierce",
    "attack_bonuses": "+2 vs Spearman",
    "range": 8,
    "accuracy": "100%",
    "projectile_speed": 7,
    "line_of_sight": 11
  }
]
```

- ### GET `/civilizations`
  Gets a list of all civilizations in alphabetical order
  
  Call `https://aoe2de-api.herokuapp.com/civilizations`
 
- ### GET `/civilizations/{name:string}`
  Gets a list of all civilizations in alphabetical order that match the input
  
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

- ### GET `/technologies`
  Gets a list of all technologies in alphabetical order
  
  Call `https://aoe2de-api.herokuapp.com/technologies`
 
- ### GET `/technologies/{name:string}`
  Gets a list of all technologies in alphabetical order that match the input
  
  Example call `https://aoe2de-api.herokuapp.com/technologies/architecture`

```
[
  {
    "name": "Architecture",
    "introduced_in": "The Age of Kings",
    "age": 4,
    "researched_at": "University",
    "cost": "300F, 200W",
    "research_time": 70,
    "effect": "Buildings +10% HP, +1 armor, +1 pierce armor, +3 building armor"
  }
]
```

- ### GET `/units`
  Gets a list of all units in alphabetical order
  
  Call `https://aoe2de-api.herokuapp.com/units`
 
- ### GET `/units/{name:string}`
  Gets a list of all units in alphabetical order that match the input
  
  Example call `https://aoe2de-api.herokuapp.com/units/archer`

```
[
  {
    "name": "Archer",
    "description": "Quick and light. Weak at close range; excels at battle from distance.",
    "introduced_in": "The Age of Kings",
    "type": "Archer",
    "age": 2,
    "trained_at": "Archery Range",
    "cost": "25W, 45G",
    "training_time": 35,
    "hit_points": 30,
    "attack": "4 pierce",
    "attack_bonuses": "+3 vs Spearman",
    "rate_of_fire": "2.0",
    "melee_armor": 0,
    "pierce_armor": 0,
    "speed": "0.96",
    "line_of_sight": "6",
    "upgrades_to": "Crossbowman",
    "upgrade_cost": "125F, 75G",
    "upgrade_time": 35
  }
]
```
