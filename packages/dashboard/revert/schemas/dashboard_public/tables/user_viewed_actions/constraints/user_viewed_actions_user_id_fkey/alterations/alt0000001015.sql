-- Revert: schemas/dashboard_public/tables/user_viewed_actions/constraints/user_viewed_actions_user_id_fkey/alterations/alt0000001015 from pg

BEGIN;
COMMENT ON CONSTRAINT user_viewed_actions_user_id_fkey ON "dashboard_public".user_viewed_actions IS NULL;
COMMIT;  

