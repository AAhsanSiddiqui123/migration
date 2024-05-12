-- Deploy: schemas/dashboard_public/tables/user_settings/columns/lang_code/alterations/alt0000001371 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/table
-- requires: schemas/dashboard_public/tables/user_settings/columns/lang_code/column

BEGIN;

ALTER TABLE "dashboard_public".user_settings 
    ALTER COLUMN lang_code SET DEFAULT 'en';
COMMIT;
