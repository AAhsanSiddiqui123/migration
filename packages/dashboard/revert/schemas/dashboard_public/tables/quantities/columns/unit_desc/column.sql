-- Revert: schemas/dashboard_public/tables/quantities/columns/unit_desc/column from pg

BEGIN;


ALTER TABLE "dashboard_public".quantities DROP COLUMN unit_desc;
COMMIT;  

