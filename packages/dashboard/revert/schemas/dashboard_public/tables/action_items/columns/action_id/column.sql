-- Revert: schemas/dashboard_public/tables/action_items/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN action_id;
COMMIT;  

