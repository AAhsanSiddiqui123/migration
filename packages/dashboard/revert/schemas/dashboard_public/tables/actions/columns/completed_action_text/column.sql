-- Revert: schemas/dashboard_public/tables/actions/columns/completed_action_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN completed_action_text;
COMMIT;  

