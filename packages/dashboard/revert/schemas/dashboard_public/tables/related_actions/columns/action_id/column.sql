-- Revert: schemas/dashboard_public/tables/related_actions/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".related_actions DROP COLUMN action_id;
COMMIT;  

