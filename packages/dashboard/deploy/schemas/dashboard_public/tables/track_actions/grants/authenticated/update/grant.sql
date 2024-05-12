-- Deploy: schemas/dashboard_public/tables/track_actions/grants/authenticated/update/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;
GRANT UPDATE ON TABLE "dashboard_public".track_actions TO authenticated;
COMMIT;
