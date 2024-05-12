-- Revert: schemas/dashboard_public/tables/app_constants/columns/id/alterations/alt0000001383 from pg

BEGIN;


ALTER TABLE "dashboard_public".app_constants 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

