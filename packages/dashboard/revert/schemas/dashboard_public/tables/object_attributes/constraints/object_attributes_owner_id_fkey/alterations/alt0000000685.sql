-- Revert: schemas/dashboard_public/tables/object_attributes/constraints/object_attributes_owner_id_fkey/alterations/alt0000000685 from pg

BEGIN;
COMMENT ON CONSTRAINT object_attributes_owner_id_fkey ON "dashboard_public".object_attributes IS NULL;
COMMIT;  

