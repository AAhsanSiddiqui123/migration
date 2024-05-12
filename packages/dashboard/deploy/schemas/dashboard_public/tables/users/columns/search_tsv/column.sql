-- Deploy: schemas/dashboard_public/tables/users/columns/search_tsv/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;

ALTER TABLE "dashboard_public".users ADD COLUMN search_tsv tsvector;
COMMIT;
