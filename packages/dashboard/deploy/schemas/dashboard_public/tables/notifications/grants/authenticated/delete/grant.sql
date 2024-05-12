-- Deploy: schemas/dashboard_public/tables/notifications/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/notifications/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".notifications TO authenticated;
COMMIT;
