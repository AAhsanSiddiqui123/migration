-- Revert: schemas/dashboard_public/tables/forms/constraints/forms_action_id_fkey/alterations/alt0000001341 from pg

BEGIN;
COMMENT ON CONSTRAINT forms_action_id_fkey ON "dashboard_public".forms IS NULL;
COMMIT;  

