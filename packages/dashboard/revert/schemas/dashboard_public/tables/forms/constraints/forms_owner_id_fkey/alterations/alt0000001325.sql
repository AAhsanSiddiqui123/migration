-- Revert: schemas/dashboard_public/tables/forms/constraints/forms_owner_id_fkey/alterations/alt0000001325 from pg

BEGIN;
COMMENT ON CONSTRAINT forms_owner_id_fkey ON "dashboard_public".forms IS NULL;
COMMIT;  

