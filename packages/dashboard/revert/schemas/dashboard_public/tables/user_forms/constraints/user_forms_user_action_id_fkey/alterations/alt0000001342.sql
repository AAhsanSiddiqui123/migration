-- Revert: schemas/dashboard_public/tables/user_forms/constraints/user_forms_user_action_id_fkey/alterations/alt0000001342 from pg

BEGIN;
COMMENT ON CONSTRAINT user_forms_user_action_id_fkey ON "dashboard_public".user_forms IS NULL;
COMMIT;  

