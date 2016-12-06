/* %s is where the string insert will be */
/* ie in Java => "... WHERE id =" + %s */ 



/*	Query: 1	*/
SELECT identifier 
FROM pokemon_species
WHERE id = %s;

/*	Query: 2	*/
SELECT s.identifier, ps.base_stat
FROM pokemon_stats AS ps, stats AS s
WHERE ps.pokemon_id = %s AND s.id = ps.stat_id;

/*	Query: 3	*/
SELECT t.identifier
FROM pokemon_types AS pt, types AS t
WHERE pt.pokemon_id = %s AND t.id = pt.type_id;

/*	Query:4 	*/
SELECT g.identifier
FROM generations AS g, pokemon_species AS ps
WHERE ps.id = %s AND g.id = ps.generation_id;

/*	Query: 9	*/
select identifier
from pokemon_species
where generation_id = %s;

/*	Query: 10	*/
select distinct ps.pokemon_id 
from pokemon_stats as ps, stats as s
where s.identifier = 'hp' AND ps.base_stat >= 80 
order by ps.pokemon_id;

/*	Query: 11	*/

