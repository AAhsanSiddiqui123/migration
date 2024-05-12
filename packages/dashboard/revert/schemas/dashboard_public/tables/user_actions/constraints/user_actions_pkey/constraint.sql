-- Revert: schemas/dashboard_public/tables/user_actions/constraints/user_actions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    DROP CONSTRAINT user_actions_pkey;

COMMIT;  

