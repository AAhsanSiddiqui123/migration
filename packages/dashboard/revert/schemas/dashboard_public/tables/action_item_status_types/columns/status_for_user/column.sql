-- Revert: schemas/dashboard_public/tables/action_item_status_types/columns/status_for_user/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_item_status_types DROP COLUMN status_for_user;
COMMIT;  

