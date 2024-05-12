-- Deploy: schemas/dashboard_public/tables/track_actions/alterations/alt0000000936 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE "dashboard_public".track_actions
    DISABLE ROW LEVEL SECURITY;
COMMIT;
