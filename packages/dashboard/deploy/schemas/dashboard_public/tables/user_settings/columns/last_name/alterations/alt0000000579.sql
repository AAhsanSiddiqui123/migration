-- Deploy: schemas/dashboard_public/tables/user_settings/columns/last_name/alterations/alt0000000579 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/columns/last_name/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.last_name IS E'user surname';
COMMIT;
