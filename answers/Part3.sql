#What is each pokemon's primary type?
select pokemons.name, types.name as TypeName 
from pokemons 
INNER JOIN types 
ON pokemons.primary_type = types.id;

#What is Rufflet's secondary type?
SELECT pokemons.name as Name, types.name as Second_Type 
FROM pokemons 
INNER JOIN types 
ON pokemons.secondary_type = types.id
WHERE pokemons.name = 'Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name 
FROM pokemons
INNER JOIN pokemon_trainer
ON pokemon_trainer.pokemon_id  = pokemons.id 
WHERE pokemon_trainer.trainerID = 303;

#How many pokemon have a secondary type Poison
SELECT count(*) 
FROM pokemons
WHERE secondary_type = 7;

#What are all the primary types and how many pokemon have that type?
SELECT types.name, count(pokemons.name) AS Number_Of_Pokemon
FROM pokemons
INNER JOIN types ON pokemons.primary_type = types.id 
GROUP BY types.name;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(pokelevel)
FROM pokemon_trainer
GROUP BY trainerID
HAVING COUNT(CASE WHEN pokelevel=100 THEN 1 END)>0;

#How many pokemon only belong to one trainer and no other?
SELECT COUNT(*) AS Rare_Pokemen
FROM (SELECT COUNT(trainerID)
        from pokemon_trainer
        group by pokemon_id
        HAVING COUNT(trainerID)=1) AS Rare_Pokemen;