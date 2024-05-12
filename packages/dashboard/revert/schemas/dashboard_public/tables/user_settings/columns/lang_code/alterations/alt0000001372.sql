-- Revert: schemas/dashboard_public/tables/user_settings/columns/lang_code/alterations/alt0000001372 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_settings 
    ALTER COLUMN lang_code DROP NOT NULL;


COMMIT;  

