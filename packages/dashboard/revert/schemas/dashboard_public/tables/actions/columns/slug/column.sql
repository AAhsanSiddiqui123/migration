-- Revert: schemas/dashboard_public/tables/actions/columns/slug/column from pg

BEGIN;


ALTER TABLE "dashboard_public".actions DROP COLUMN slug;
COMMIT;  

