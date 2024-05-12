-- Deploy: schemas/dashboard_public/tables/groups/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/groups/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".groups TO authenticated;
COMMIT;
