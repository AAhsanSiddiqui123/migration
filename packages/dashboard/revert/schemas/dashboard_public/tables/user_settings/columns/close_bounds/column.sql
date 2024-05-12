-- Revert: schemas/dashboard_public/tables/user_settings/columns/close_bounds/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN close_bounds;
COMMIT;  

