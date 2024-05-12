-- Revert: schemas/dashboard_public/tables/location_types/columns/id/alterations/alt0000001487 from pg

BEGIN;


ALTER TABLE "dashboard_public".location_types 
    ALTER COLUMN id DROP NOT NULL;


COMMIT;  

