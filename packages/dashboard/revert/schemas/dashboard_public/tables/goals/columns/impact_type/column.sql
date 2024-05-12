-- Revert: schemas/dashboard_public/tables/goals/columns/impact_type/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN impact_type;
COMMIT;  

