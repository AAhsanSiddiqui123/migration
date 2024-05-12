-- Revert: schemas/dashboard_public/tables/units/constraints/units_quantity_id_fkey/alterations/alt0000000645 from pg

BEGIN;
COMMENT ON CONSTRAINT units_quantity_id_fkey ON "dashboard_public".units IS NULL;
COMMIT;  

