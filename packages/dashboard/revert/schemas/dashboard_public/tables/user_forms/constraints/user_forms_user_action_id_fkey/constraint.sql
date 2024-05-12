-- Revert: schemas/dashboard_public/tables/user_forms/constraints/user_forms_user_action_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    DROP CONSTRAINT user_forms_user_action_id_fkey;

COMMIT;  

