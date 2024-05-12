-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/bounds/column

BEGIN;
CREATE INDEX actions_bounds_idx ON "dashboard_public".actions USING GIST (bounds);
COMMIT;
