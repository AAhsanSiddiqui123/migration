-- Revert: schemas/dashboard_public/tables/user_settings/columns/zip/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN zip;
COMMIT;  

