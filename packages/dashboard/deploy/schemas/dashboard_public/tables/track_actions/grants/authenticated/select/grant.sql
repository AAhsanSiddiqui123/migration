-- Deploy: schemas/dashboard_public/tables/track_actions/grants/authenticated/select/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;
GRANT SELECT ON TABLE "dashboard_public".track_actions TO authenticated;
COMMIT;
