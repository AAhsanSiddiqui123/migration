-- Deploy: schemas/dashboard_public/tables/related_actions/grants/authenticated/delete/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;
GRANT DELETE ON TABLE "dashboard_public".related_actions TO authenticated;
COMMIT;
