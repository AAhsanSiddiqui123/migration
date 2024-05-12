-- Revert: schemas/dashboard_public/tables/impacts/columns/per_interval/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN per_interval;
COMMIT;  

