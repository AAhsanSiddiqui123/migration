-- Revert: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_user_id_fkey/alterations/alt0000001003 from pg

BEGIN;
COMMENT ON CONSTRAINT user_saved_actions_user_id_fkey ON "dashboard_public".user_saved_actions IS NULL;
COMMIT;  

