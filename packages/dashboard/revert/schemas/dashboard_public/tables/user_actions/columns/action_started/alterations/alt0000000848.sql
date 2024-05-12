-- Revert: schemas/dashboard_public/tables/user_actions/columns/action_started/alterations/alt0000000848 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions 
    ALTER COLUMN action_started DROP DEFAULT;

COMMIT;  

