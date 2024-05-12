-- Revert: schemas/dashboard_public/tables/user_pass_actions/constraints/user_pass_actions_pkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions 
    DROP CONSTRAINT user_pass_actions_pkey;

COMMIT;  

