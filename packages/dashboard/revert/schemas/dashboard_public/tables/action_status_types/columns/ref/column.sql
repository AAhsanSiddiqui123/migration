-- Revert: schemas/dashboard_public/tables/action_status_types/columns/ref/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types DROP COLUMN ref;
COMMIT;  

