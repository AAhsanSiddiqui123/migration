-- Revert: schemas/dashboard_public/tables/notifications/columns/id/alterations/alt0000001166 from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

