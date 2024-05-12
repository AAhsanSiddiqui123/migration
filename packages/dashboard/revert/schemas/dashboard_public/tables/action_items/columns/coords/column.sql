-- Revert: schemas/dashboard_public/tables/action_items/columns/coords/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN coords;
COMMIT;  

