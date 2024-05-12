-- Revert: schemas/dashboard_public/tables/groups/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".groups DROP COLUMN id;
COMMIT;  

