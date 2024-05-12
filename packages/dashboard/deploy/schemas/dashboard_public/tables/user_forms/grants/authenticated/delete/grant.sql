-- Deploy: schemas/dashboard_public/tables/user_forms/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_forms/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".user_forms TO authenticated;
COMMIT;
