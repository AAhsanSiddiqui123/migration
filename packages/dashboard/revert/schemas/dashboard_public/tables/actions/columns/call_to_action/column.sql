-- Revert: schemas/dashboard_public/tables/actions/columns/call_to_action/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN call_to_action;
COMMIT;  

