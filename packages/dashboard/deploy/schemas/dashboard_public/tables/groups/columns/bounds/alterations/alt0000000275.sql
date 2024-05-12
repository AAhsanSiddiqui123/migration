-- Deploy: schemas/dashboard_public/tables/groups/columns/bounds/alterations/alt0000000275 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/columns/bounds/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".groups.bounds IS E'all locations combined using ST_Collect for search optimization';
COMMIT;
