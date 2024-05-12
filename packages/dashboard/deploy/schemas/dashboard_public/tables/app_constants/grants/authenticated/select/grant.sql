-- Deploy: schemas/dashboard_public/tables/app_constants/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".app_constants TO authenticated;
COMMIT;
