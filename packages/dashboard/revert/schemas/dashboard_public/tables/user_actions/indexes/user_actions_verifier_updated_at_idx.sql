-- Revert: schemas/dashboard_public/tables/user_actions/indexes/user_actions_verifier_updated_at_idx from pg

BEGIN;
DROP INDEX "dashboard_public".user_actions_verifier_updated_at_idx;
COMMIT;  

