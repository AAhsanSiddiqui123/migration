-- Deploy: schemas/dashboard_public/tables/user_settings/columns/close_bounds/alterations/alt0000001613 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_settings/columns/close_bounds/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".user_settings.close_bounds IS E'user home, work, and other "close" locations combined using ST_Collect for search optimization';
COMMIT;
