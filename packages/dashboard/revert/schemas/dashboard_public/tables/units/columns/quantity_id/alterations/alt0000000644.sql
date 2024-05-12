-- Revert: schemas/dashboard_public/tables/units/columns/quantity_id/alterations/alt0000000644 from pg

BEGIN;


ALTER TABLE "dashboard_public".units 
    ALTER COLUMN quantity_id DROP NOT NULL;


COMMIT;  

