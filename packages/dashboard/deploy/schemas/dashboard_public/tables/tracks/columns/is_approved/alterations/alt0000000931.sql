-- Deploy: schemas/dashboard_public/tables/tracks/columns/is_approved/alterations/alt0000000931 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/is_approved/column

BEGIN;

ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN is_approved SET DEFAULT FALSE;
COMMIT;
