-- =============================================================================
-- QUERY 1 — One-table query (filtering / projection / WHERE)
-- =============================================================================
-- Description:
-- Pretty straightforward: lists which titles scored 85 or higher on the 0–100 rating field in Media.
-- Only one table, filters with WHERE, sorts so the best scores show up first.


SELECT Media_ID,
       Title,
       Rating
FROM   Media
WHERE  Rating >= 85
ORDER  BY Rating DESC, Title;



-- =============================================================================
-- QUERY 2 — Two-table join (INNER JOIN)
-- =============================================================================
-- Description:
-- Hooks Movies to Media to show runtime, release date, title, and rating together. An inner join drops
-- rows that exist in only one of the tables; here that should not happen for valid movie data.


SELECT m.Title,
       m.Rating,
       mv.Runtime,
       mv.ReleaseDate
FROM   Movies   mv
       INNER JOIN Media m ON mv.Media_ID = m.Media_ID
ORDER  BY mv.ReleaseDate;



-- =============================================================================
-- QUERY 3 — Two-table join (LEFT OUTER JOIN)
-- =============================================================================
-- Description:
-- Keeps every Media row and left-joins TV_Shows so movies stay in the list even though they are not TV.
-- Series rows fill in episode counts and air dates; film rows leave those fields null. One result set
-- compares both kinds of title side by side.


SELECT m.Media_ID,
       m.Title,
       m.Rating,
       tv.Number_of_Episodes,
       tv.Release_Length_Start,
       tv.Release_Length_End
FROM   Media     m
       LEFT JOIN TV_Shows tv ON m.Media_ID = tv.Media_ID
ORDER  BY m.Media_ID;