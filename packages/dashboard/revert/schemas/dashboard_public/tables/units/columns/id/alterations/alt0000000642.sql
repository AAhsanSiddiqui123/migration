-- Revert: schemas/dashboard_public/tables/units/columns/id/alterations/alt0000000642 from pg

BEGIN;


ALTER TABLE "dashboard_public".units 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

