-- Deploy: schemas/dashboard_public/tables/track_types/columns/ref/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_types/table

BEGIN;

ALTER TABLE "dashboard_public".track_types ADD COLUMN ref text;
COMMIT;