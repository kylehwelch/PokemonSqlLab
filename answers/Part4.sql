SELECT trainers.trainername 'Trainer', pokemons.name 'Pokemon'
, pokemon_trainer.pokelevel 'Level', p_types.name 'Primary Type', s_types.name 'Secondary Type'
FROM pokemons JOIN types p_types
ON pokemons.primary_type = p_types.id
LEFT JOIN types s_types ON pokemons.secondary_type = s_types.id
JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id
JOIN trainers ON pokemon_trainer.trainerID = trainers.trainerid
ORDER BY attack & spatk DESC;
