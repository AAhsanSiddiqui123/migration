-- Revert: schemas/dashboard_public/tables/forms/constraints/forms_type_id_fkey/alterations/alt0000001327 from pg

BEGIN;
COMMENT ON CONSTRAINT forms_type_id_fkey ON "dashboard_public".forms IS NULL;
COMMIT;  

