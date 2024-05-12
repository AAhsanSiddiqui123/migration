-- Deploy: schemas/dashboard_public/tables/impacts/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impacts/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".impacts TO authenticated;
COMMIT;
