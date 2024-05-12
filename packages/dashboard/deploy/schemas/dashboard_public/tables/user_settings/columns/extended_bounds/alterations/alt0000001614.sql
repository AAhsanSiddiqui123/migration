-- Deploy: schemas/dashboard_public/tables/user_settings/columns/extended_bounds/alterations/alt0000001614 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/columns/extended_bounds/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.extended_bounds IS E'all of the users locations combined using ST_Collect for search optimization';
COMMIT;
