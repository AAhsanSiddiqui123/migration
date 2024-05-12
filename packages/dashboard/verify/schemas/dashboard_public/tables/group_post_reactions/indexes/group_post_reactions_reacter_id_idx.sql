-- Verify: schemas/dashboard_public/tables/group_post_reactions/indexes/group_post_reactions_reacter_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.group_post_reactions', 'group_post_reactions_reacter_id_idx');
COMMIT;  

