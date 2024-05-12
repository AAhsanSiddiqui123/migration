-- Revert: schemas/dashboard_public/tables/user_settings/columns/temporary_bounds/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN temporary_bounds;
COMMIT;  

