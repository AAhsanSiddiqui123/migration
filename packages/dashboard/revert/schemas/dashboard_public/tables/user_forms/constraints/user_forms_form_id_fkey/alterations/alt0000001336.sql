-- Revert: schemas/dashboard_public/tables/user_forms/constraints/user_forms_form_id_fkey/alterations/alt0000001336 from pg

BEGIN;
COMMENT ON CONSTRAINT user_forms_form_id_fkey ON "dashboard_public".user_forms IS NULL;
COMMIT;  

