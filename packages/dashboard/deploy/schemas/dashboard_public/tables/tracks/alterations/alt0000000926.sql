-- Deploy: schemas/dashboard_public/tables/tracks/alterations/alt0000000926 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;

ALTER TABLE "dashboard_public".tracks
    DISABLE ROW LEVEL SECURITY;
COMMIT;
