-- Revert: schemas/dashboard_public/tables/units/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN id;
COMMIT;  

