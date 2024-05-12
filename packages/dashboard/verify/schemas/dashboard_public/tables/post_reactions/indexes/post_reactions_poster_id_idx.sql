-- Verify: schemas/dashboard_public/tables/post_reactions/indexes/post_reactions_poster_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.post_reactions', 'post_reactions_poster_id_idx');
COMMIT;  

