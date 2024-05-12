-- Revert: schemas/dashboard_public/tables/quantities/columns/id/alterations/alt0000000640 from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

