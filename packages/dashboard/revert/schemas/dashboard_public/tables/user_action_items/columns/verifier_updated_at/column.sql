-- Revert: schemas/dashboard_public/tables/user_action_items/columns/verifier_updated_at/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_action_items DROP COLUMN verifier_updated_at;
COMMIT;  

