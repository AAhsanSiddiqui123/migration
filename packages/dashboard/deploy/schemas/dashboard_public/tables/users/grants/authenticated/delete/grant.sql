-- Deploy: schemas/dashboard_public/tables/users/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".users TO authenticated;
COMMIT;
