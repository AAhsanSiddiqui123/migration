-- Deploy: schemas/dashboard_public/tables/actions/columns/bounds/alterations/alt0000000776 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/columns/bounds/column

BEGIN;
COMMENT ON COLUMN "dashboard_public".actions.bounds IS E'all locations combined using ST_Collect for search optimization';
COMMIT;
