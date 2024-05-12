-- Revert: schemas/dashboard_public/tables/user_action_reactions/indexes/user_action_reactions_reacter_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_action_reactions_reacter_id_idx;
COMMIT;  

