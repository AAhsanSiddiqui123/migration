-- Deploy: schemas/dashboard_public/tables/user_settings/columns/zip/alterations/alt0000000581 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/columns/zip/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.zip IS E'user zip code';
COMMIT;
