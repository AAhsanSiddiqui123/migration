-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/status_for_verifier/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types DROP COLUMN status_for_verifier;
COMMIT;  

