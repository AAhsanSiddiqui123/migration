-- Revert: schemas/dashboard_public/tables/user_actions/columns/action_started/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_actions DROP COLUMN action_started;
COMMIT;  

