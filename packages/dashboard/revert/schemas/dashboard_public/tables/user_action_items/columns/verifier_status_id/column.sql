-- Revert: schemas/dashboard_public/tables/user_action_items/columns/verifier_status_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN verifier_status_id;
COMMIT;  

