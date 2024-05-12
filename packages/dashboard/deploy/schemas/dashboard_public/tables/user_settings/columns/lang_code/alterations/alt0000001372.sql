-- Deploy: schemas/dashboard_public/tables/user_settings/columns/lang_code/alterations/alt0000001372 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/lang_code/column

BEGIN;

UPDATE "dashboard_public".user_settings SET lang_code = 'en' where lang_code IS NULL;

ALTER TABLE "dashboard_public".user_settings 
    ALTER COLUMN lang_code SET NOT NULL;
COMMIT;
