-- Deploy: schemas/dashboard_status_public/tables/app_levels/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_levels/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_status_public".app_levels TO authenticated;
COMMIT;
