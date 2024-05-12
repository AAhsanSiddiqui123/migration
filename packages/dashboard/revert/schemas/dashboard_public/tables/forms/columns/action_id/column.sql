-- Revert: schemas/dashboard_public/tables/forms/columns/action_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".forms DROP COLUMN action_id;
COMMIT;  

