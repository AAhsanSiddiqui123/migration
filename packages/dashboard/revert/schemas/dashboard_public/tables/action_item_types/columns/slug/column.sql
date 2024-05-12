-- Revert: schemas/dashboard_public/tables/action_item_types/columns/slug/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_types DROP COLUMN slug;
COMMIT;  

