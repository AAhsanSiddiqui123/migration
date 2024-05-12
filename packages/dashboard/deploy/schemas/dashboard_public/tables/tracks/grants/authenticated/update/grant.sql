-- Deploy: schemas/dashboard_public/tables/tracks/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".tracks TO authenticated;
COMMIT;
