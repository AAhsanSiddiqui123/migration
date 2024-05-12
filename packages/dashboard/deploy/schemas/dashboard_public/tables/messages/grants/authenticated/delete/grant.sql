-- Deploy: schemas/dashboard_public/tables/messages/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/messages/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".messages TO authenticated;
COMMIT;
