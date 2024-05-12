-- Deploy: schemas/dashboard_public/tables/tracks/columns/id/alterations/alt0000000927 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
