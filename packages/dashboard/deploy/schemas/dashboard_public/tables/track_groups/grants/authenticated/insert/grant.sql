-- Deploy: schemas/dashboard_public/tables/track_groups/grants/authenticated/insert/grant to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;
GRANT INSERT ON TABLE "dashboard_public".track_groups TO authenticated;
COMMIT;
