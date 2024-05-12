-- Deploy: schemas/dashboard_public/tables/app_constants/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/app_constants/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".app_constants TO authenticated;
COMMIT;
