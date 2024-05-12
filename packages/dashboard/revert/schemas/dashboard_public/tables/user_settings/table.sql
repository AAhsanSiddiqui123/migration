-- Revert: schemas/dashboard_public/tables/user_settings/table from pg

BEGIN;
DROP TABLE "dashboard_public".user_settings;
COMMIT;  

