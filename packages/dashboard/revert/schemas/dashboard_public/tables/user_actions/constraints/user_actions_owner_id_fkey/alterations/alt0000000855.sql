-- Revert: schemas/dashboard_public/tables/user_actions/constraints/user_actions_owner_id_fkey/alterations/alt0000000855 from pg

BEGIN;
COMMENT ON CONSTRAINT user_actions_owner_id_fkey ON "dashboard_public".user_actions IS NULL;
COMMIT;  

