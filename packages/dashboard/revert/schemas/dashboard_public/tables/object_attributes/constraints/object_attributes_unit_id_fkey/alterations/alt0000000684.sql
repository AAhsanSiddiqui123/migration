-- Revert: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_unit_id_fkey/alterations/alt0000000684 from pg

BEGIN;
COMMENT ON CONSTRAINT object_attributes_unit_id_fkey ON "dashboard_public".object_attributes IS NULL;
COMMIT;  

