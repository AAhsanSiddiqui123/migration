-- Deploy: schemas/dashboard_public/tables/tracks/constraints/tracks_slug_key/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table

BEGIN;

ALTER TABLE "dashboard_public".tracks
    ADD CONSTRAINT tracks_slug_key UNIQUE (slug);
COMMIT;
