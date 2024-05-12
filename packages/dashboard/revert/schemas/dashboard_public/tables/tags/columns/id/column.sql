-- Revert: schemas/dashboard_public/tables/tags/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".tags DROP COLUMN id;
COMMIT;  

