-- Revert: schemas/dashboard_public/tables/user_actions/indexes/user_actions_object_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_actions_object_id_idx;
COMMIT;  

