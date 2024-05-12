-- Revert: schemas/dashboard_public/tables/impacts/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN id;
COMMIT;  

