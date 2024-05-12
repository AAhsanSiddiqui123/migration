-- Revert: schemas/dashboard_public/tables/user_actions/columns/verifier_status_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN verifier_status_id;
COMMIT;  

