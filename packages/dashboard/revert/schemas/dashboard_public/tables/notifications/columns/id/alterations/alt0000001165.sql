-- Revert: schemas/dashboard_public/tables/notifications/columns/id/alterations/alt0000001165 from pg

BEGIN;


ALTER TABLE "dashboard_public".notifications 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

