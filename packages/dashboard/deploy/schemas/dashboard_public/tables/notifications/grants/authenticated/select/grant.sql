-- Deploy: schemas/dashboard_public/tables/notifications/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".notifications TO authenticated;
COMMIT;
