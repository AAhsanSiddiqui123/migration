-- Revert: schemas/dashboard_public/tables/user_settings/columns/search_radius/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN search_radius;
COMMIT;  

