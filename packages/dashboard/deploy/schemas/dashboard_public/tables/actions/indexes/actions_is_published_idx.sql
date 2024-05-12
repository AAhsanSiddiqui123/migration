-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_is_published_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/is_published/column

BEGIN;
CREATE INDEX actions_is_published_idx ON "dashboard_public".actions (is_published);
COMMIT;
