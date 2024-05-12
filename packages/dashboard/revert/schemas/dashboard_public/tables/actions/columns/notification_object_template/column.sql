-- Revert: schemas/dashboard_public/tables/actions/columns/notification_object_template/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN notification_object_template;
COMMIT;  

