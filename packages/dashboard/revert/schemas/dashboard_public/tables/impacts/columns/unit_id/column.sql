-- Revert: schemas/dashboard_public/tables/impacts/columns/unit_id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".impacts DROP COLUMN unit_id;
COMMIT;  

