-- Revert: schemas/dashboard_public/tables/action_items/columns/unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN unit_id;
COMMIT;  

