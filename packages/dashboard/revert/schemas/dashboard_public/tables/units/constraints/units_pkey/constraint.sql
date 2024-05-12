-- Revert: schemas/dashboard_public/tables/units/constraints/units_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".units 
    DROP CONSTRAINT units_pkey;

COMMIT;  

