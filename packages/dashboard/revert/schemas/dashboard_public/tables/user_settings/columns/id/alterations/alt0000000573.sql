-- Revert: schemas/dashboard_public/tables/user_settings/columns/id/alterations/alt0000000573 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings 
    ALTER COLUMN id DROP DEFAULT;

COMMIT;  

