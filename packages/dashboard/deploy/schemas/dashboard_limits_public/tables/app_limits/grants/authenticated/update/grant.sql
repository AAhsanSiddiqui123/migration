-- Deploy: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limits/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_limits_public".app_limits TO authenticated;
COMMIT;
