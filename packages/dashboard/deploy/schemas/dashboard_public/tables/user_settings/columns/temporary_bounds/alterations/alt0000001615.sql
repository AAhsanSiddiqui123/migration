-- Deploy: schemas/dashboard_public/tables/user_settings/columns/temporary_bounds/alterations/alt0000001615 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/columns/temporary_bounds/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.temporary_bounds IS E'all of the users temporary locations combined using ST_Collect for search optimization';
COMMIT;
