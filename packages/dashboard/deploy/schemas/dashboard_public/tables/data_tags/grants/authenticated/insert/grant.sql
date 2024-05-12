-- Deploy: schemas/dashboard_public/tables/data_tags/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/data_tags/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".data_tags TO authenticated;
COMMIT;
