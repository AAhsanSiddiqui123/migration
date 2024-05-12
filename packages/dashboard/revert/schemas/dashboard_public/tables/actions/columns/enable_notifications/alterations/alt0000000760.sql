-- Revert: schemas/dashboard_public/tables/actions/columns/enable_notifications/alterations/alt0000000760 from pg

BEGIN;


ALTER TABLE "dashboard_public".actions 
    ALTER COLUMN enable_notifications DROP DEFAULT;

COMMIT;  

