-- Revert: schemas/dashboard_public/tables/action_items/columns/owner_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN owner_id;
COMMIT;  

