-- Revert: schemas/dashboard_public/tables/user_pass_actions/indexes/user_pass_actions_user_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_pass_actions_user_id_idx;
COMMIT;  

