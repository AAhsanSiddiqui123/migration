-- Deploy: schemas/dashboard_status_public/tables/app_steps/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_status_public/schema
-- requires: schemas/dashboard_status_public/tables/app_steps/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_status_public".app_steps TO authenticated;
COMMIT;
