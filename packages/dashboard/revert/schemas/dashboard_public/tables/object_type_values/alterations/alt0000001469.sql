-- Revert: schemas/dashboard_public/tables/object_type_values/alterations/alt0000001469 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".object_type_values IS NULL;
COMMIT;  

