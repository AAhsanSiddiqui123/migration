-- Revert: schemas/dashboard_public/tables/user_actions/columns/verifier_updated_at/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN verifier_updated_at;
COMMIT;  

