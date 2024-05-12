-- Revert: schemas/dashboard_public/tables/impacts/constraints/impacts_per_unit_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts 
    DROP CONSTRAINT impacts_per_unit_id_fkey;

COMMIT;  

