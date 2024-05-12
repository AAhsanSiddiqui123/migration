-- Verify: schemas/dashboard_public/tables/user_action_reactions/indexes/user_action_reactions_action_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_action_reactions', 'user_action_reactions_action_id_idx');
COMMIT;  

