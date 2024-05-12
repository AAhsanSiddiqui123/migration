-- Deploy: schemas/dashboard_public/tables/track_language_variations/columns/id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".track_language_variations ADD COLUMN id uuid;
COMMIT;
