-- Revert: schemas/dashboard_public/tables/tags/columns/id/alterations/alt0000000982 from pg

BEGIN;


ALTER TABLE "dashboard_public".tags 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

