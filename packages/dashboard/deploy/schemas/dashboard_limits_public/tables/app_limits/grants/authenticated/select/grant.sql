-- Deploy: schemas/dashboard_limits_public/tables/app_limits/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limits/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_limits_public".app_limits TO authenticated;
COMMIT;
