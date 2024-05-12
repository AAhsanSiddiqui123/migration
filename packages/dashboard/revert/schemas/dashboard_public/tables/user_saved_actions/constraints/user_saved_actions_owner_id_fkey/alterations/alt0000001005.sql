-- Revert: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_owner_id_fkey/alterations/alt0000001005 from pg

BEGIN;
COMMENT ON CONSTRAINT user_saved_actions_owner_id_fkey ON "dashboard_public".user_saved_actions IS NULL;
COMMIT;  

