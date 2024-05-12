-- Revert: schemas/dashboard_public/tables/object_types/alterations/alt0000001477 from pg

BEGIN;
COMMENT ON TABLE "dashboard_public".object_types IS NULL;
COMMIT;  

