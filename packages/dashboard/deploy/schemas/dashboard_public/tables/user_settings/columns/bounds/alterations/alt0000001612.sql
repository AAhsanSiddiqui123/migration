-- Deploy: schemas/dashboard_public/tables/user_settings/columns/bounds/alterations/alt0000001612 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/columns/bounds/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.bounds IS E'user home locations combined using ST_Collect for search optimization';
COMMIT;
