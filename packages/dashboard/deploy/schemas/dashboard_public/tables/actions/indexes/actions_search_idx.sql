-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_search_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/search/column

BEGIN;
CREATE INDEX actions_search_idx ON "dashboard_public".actions USING GIN (search);
COMMIT;
