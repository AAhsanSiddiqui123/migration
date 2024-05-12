-- Deploy: schemas/dashboard_public/tables/user_tracks/columns/id/alterations/alt0000000952 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table
-- requires: schemas/dashboard_public/tables/user_tracks/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN id SET DEFAULT "dashboard_private".uuid_generate_v4();
COMMIT;
