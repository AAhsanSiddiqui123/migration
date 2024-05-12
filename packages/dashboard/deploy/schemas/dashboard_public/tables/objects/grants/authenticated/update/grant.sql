-- Deploy: schemas/dashboard_public/tables/objects/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".objects TO authenticated;
COMMIT;
