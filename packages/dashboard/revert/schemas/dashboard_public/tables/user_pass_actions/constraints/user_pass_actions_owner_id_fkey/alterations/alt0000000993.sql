-- Revert: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_owner_id_fkey/alterations/alt0000000993 from pg

BEGIN;
COMMENT ON CONSTRAINT user_pass_actions_owner_id_fkey ON "dashboard_public".user_pass_actions IS NULL;
COMMIT;  

