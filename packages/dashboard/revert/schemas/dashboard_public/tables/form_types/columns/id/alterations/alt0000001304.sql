-- Revert: schemas/dashboard_public/tables/form_types/columns/id/alterations/alt0000001304 from pg

BEGIN;


ALTER TABLE "dashboard_public".form_types 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

