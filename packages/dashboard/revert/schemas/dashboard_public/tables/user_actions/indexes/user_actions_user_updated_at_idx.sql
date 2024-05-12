-- Revert: schemas/dashboard_public/tables/user_actions/indexes/user_actions_user_updated_at_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_actions_user_updated_at_idx;
COMMIT;  

