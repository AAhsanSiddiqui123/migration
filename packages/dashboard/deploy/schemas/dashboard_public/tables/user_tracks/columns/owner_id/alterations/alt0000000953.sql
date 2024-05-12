-- Deploy: schemas/dashboard_public/tables/user_tracks/columns/owner_id/alterations/alt0000000953 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table
-- requires: schemas/dashboard_public/tables/user_tracks/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".user_tracks 
    ALTER COLUMN owner_id SET NOT NULL;
COMMIT;
