-- Deploy: schemas/dashboard_public/tables/user_tracks/alterations/alt0000000950 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".user_tracks
    DISABLE ROW LEVEL SECURITY;
COMMIT;
