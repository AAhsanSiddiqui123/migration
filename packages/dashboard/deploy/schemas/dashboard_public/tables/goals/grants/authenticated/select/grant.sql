-- Deploy: schemas/dashboard_public/tables/goals/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goals/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".goals TO authenticated;
COMMIT;
