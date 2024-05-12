-- Revert: schemas/dashboard_public/tables/impacts/constraints/impacts_object_type_id_fkey/alterations/alt0000000722 from pg

BEGIN;
COMMENT ON CONSTRAINT impacts_object_type_id_fkey ON "dashboard_public".impacts IS NULL;
COMMIT;  

