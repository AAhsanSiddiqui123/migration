-- Deploy: schemas/dashboard_public/tables/tracks/columns/is_published/alterations/alt0000000930 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/is_published/column

BEGIN;

ALTER TABLE "dashboard_public".tracks 
    ALTER COLUMN is_published SET DEFAULT FALSE;
COMMIT;
