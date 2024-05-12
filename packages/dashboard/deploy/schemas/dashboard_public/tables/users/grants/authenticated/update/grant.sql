-- Deploy: schemas/dashboard_public/tables/users/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/users/table

BEGIN;
GRANT UPDATE ( display_name, profile_picture ) ON TABLE "dashboard_public".users TO authenticated;
COMMIT;
