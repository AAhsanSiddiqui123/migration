-- Revert: schemas/dashboard_public/tables/user_action_verifications/indexes/user_action_verifications_user_action_id_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_action_verifications_user_action_id_idx;
COMMIT;  

