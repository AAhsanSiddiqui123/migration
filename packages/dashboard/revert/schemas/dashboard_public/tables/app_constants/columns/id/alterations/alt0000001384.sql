-- Revert: schemas/dashboard_public/tables/app_constants/columns/id/alterations/alt0000001384 from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

