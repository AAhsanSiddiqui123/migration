-- Deploy: schemas/dashboard_public/tables/action_status_types/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_status_types/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".action_status_types TO authenticated;
COMMIT;
