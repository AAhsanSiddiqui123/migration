-- Revert: schemas/dashboard_public/tables/actions/columns/already_completed_action_text/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN already_completed_action_text;
COMMIT;  

