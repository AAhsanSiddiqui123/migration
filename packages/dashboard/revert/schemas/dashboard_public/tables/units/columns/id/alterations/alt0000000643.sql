-- Revert: schemas/dashboard_public/tables/units/columns/id/alterations/alt0000000643 from pg

BEGIN;


ALTER TABLE "dashboard_public".units 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

