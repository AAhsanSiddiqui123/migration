-- Revert: schemas/dashboard_public/tables/user_viewed_actions/constraints/user_viewed_actions_owner_id_fkey/alterations/alt0000001017 from pg

BEGIN;
COMMENT ON CONSTRAINT user_viewed_actions_owner_id_fkey ON "dashboard_public".user_viewed_actions IS NULL;
COMMIT;  

