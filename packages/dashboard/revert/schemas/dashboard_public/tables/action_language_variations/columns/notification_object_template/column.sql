-- Revert: schemas/dashboard_public/tables/action_language_variations/columns/notification_object_template/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_language_variations DROP COLUMN notification_object_template;
COMMIT;  

