#What are the types that a pokemon can have?
select * from types;

#What is the name of the pokemon with id 45?
select * from pokemons where id = 45;

#How many pokemon are there?
select count(*)
from pokemons;

#How many types are there?
SELECT count(*)
from types;

#How many pokemon have a secondary type?
select count(*) 
from pokemons
where secondary_type 
IS NOT null;