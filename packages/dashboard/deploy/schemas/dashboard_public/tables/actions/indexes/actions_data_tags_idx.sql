-- Deploy: schemas/dashboard_public/tables/actions/indexes/actions_data_tags_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/actions/table
-- requires: schemas/dashboard_public/tables/actions/columns/data_tags/column

BEGIN;
CREATE INDEX actions_data_tags_idx ON "dashboard_public".actions USING GIN (data_tags);
COMMIT;
