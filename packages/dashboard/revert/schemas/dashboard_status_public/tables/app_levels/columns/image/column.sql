-- Revert: schemas/dashboard_status_public/tables/app_levels/columns/image/column from pg

BEGIN;


ALTER TABLE "dashboard_status_public".app_levels DROP COLUMN image;
COMMIT;  

