-- Revert: schemas/dashboard_public/tables/action_status_types/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".action_status_types DROP COLUMN id;
COMMIT;  

