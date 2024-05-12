-- Revert: schemas/dashboard_public/tables/units/columns/amount/column from pg

BEGIN;


ALTER TABLE "dashboard_public".units DROP COLUMN amount;
COMMIT;  

