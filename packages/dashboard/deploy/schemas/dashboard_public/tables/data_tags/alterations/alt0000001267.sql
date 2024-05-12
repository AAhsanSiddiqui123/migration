-- Deploy: schemas/dashboard_public/tables/data_tags/alterations/alt0000001267 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;

ALTER TABLE "dashboard_public".data_tags
    DISABLE ROW LEVEL SECURITY;
COMMIT;
