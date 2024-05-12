-- Deploy: schemas/dashboard_public/tables/groups/indexes/groups_bounds_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table
-- requires: schemas/dashboard_public/tables/groups/columns/bounds/column

BEGIN;
CREATE INDEX groups_bounds_idx ON "dashboard_public".groups USING GIST (bounds);
COMMIT;
