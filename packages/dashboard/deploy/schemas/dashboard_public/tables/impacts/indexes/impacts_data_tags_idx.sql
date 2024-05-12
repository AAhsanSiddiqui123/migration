-- Deploy: schemas/dashboard_public/tables/impacts/indexes/impacts_data_tags_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table
-- requires: schemas/dashboard_public/tables/impacts/columns/data_tags/column

BEGIN;
CREATE INDEX impacts_data_tags_idx ON "dashboard_public".impacts USING GIN (data_tags);
COMMIT;
