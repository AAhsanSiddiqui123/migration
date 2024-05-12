-- Revert: schemas/dashboard_public/tables/user_action_reactions/constraints/user_action_reactions_user_action_id_fkey/alterations/alt0000001027 from pg

BEGIN;
COMMENT ON CONSTRAINT user_action_reactions_user_action_id_fkey ON "dashboard_public".user_action_reactions IS NULL;
COMMIT;  

