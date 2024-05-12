-- Revert: schemas/dashboard_public/tables/global_languages/columns/id/alterations/alt0000001284 from pg

BEGIN;


ALTER TABLE "dashboard_public".global_languages 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

