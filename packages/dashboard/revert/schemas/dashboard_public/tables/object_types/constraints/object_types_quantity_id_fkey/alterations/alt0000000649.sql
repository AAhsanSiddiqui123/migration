-- Revert: schemas/dashboard_public/tables/object_types/constraints/object_types_quantity_id_fkey/alterations/alt0000000649 from pg

BEGIN;
COMMENT ON CONSTRAINT object_types_quantity_id_fkey ON "dashboard_public".object_types IS NULL;
COMMIT;  

