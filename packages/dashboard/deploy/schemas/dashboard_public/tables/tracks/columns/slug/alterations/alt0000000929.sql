-- Deploy: schemas/dashboard_public/tables/tracks/columns/slug/alterations/alt0000000929 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/tracks/table
-- requires: schemas/dashboard_public/tables/tracks/columns/slug/column

BEGIN;
ALTER TABLE "dashboard_public".tracks ADD CONSTRAINT tracks_slug_chk CHECK (character_length(slug) <= 2048);
COMMIT;
