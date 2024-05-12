-- Deploy: schemas/dashboard_public/tables/users/indexes/users_data_tags_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/data_tags/column

BEGIN;
CREATE INDEX users_data_tags_idx ON "dashboard_public".users USING GIN (data_tags);
COMMIT;
