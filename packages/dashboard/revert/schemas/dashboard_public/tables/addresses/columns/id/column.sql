-- Revert: schemas/dashboard_public/tables/addresses/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".addresses DROP COLUMN id;
COMMIT;  

