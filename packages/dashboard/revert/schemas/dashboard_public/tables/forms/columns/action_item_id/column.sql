-- Revert: schemas/dashboard_public/tables/forms/columns/action_item_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN action_item_id;
COMMIT;  

