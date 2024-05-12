-- Revert: schemas/dashboard_public/tables/user_settings/columns/id/column from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings DROP COLUMN id;
COMMIT;  

