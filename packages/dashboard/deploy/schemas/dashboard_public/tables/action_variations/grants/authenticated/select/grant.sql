-- Deploy: schemas/dashboard_public/tables/action_variations/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".action_variations TO authenticated;
COMMIT;
