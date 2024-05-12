-- Revert: schemas/dashboard_public/tables/user_saved_actions/indexes/user_saved_actions_owner_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_saved_actions_owner_id_idx;
COMMIT;  

