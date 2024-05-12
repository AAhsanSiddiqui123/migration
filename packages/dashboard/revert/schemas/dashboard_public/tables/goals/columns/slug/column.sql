-- Revert: schemas/dashboard_public/tables/goals/columns/slug/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goals DROP COLUMN slug;
COMMIT;  

