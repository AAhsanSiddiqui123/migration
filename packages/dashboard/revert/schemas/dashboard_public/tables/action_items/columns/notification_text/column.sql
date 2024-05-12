-- Revert: schemas/dashboard_public/tables/action_items/columns/notification_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_items DROP COLUMN notification_text;
COMMIT;  

