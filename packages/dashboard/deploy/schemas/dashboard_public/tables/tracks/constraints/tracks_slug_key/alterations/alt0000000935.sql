-- Deploy: schemas/dashboard_public/tables/tracks/constraints/tracks_slug_key/alterations/alt0000000935 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/constraints/tracks_slug_key/constraint

BEGIN;
COMMENT ON CONSTRAINT tracks_slug_key ON "dashboard_public".tracks IS NULL;
COMMIT;
