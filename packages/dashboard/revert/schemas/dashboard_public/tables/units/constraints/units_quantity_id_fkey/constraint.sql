-- Revert: schemas/dashboard_public/tables/units/constraints/units_quantity_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".units 
    DROP CONSTRAINT units_quantity_id_fkey;

COMMIT;  

