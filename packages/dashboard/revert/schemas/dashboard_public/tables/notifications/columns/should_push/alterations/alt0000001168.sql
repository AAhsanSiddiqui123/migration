-- Revert: schemas/dashboard_public/tables/notifications/columns/should_push/alterations/alt0000001168 from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications 
    ALTER COLUMN should_push DROP NOT NULL;


COMMIT;  

