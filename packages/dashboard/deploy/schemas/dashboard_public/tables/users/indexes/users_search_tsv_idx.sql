-- Deploy: schemas/dashboard_public/tables/users/indexes/users_search_tsv_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table
-- requires: schemas/dashboard_public/tables/users/columns/search_tsv/column

BEGIN;
CREATE INDEX users_search_tsv_idx ON "dashboard_public".users USING GIN (search_tsv);
COMMIT;
