-- Deploy: schemas/dashboard_public/tables/objects/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/objects/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".objects TO authenticated;
COMMIT;
