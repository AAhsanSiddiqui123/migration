-- Deploy: schemas/dashboard_public/tables/user_tracks/columns/user_id/alterations/alt0000000955 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table
-- requires: schemas/dashboard_public/tables/user_tracks/columns/user_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN user_id SET NOT NULL;
COMMIT;
