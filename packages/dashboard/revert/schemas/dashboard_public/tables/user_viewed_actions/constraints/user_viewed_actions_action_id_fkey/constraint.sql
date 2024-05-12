-- Revert: schemas/dashboard_public/tables/user_viewed_actions/constraints/user_viewed_actions_action_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_viewed_actions 
    DROP CONSTRAINT user_viewed_actions_action_id_fkey;

COMMIT;  

