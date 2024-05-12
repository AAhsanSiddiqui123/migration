-- Deploy: schemas/dashboard_public/tables/goals/indexes/goals_search_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table
-- requires: schemas/dashboard_public/tables/goals/columns/search/column

BEGIN;
CREATE INDEX goals_search_idx ON "dashboard_public".goals USING GIN (search);
COMMIT;
