-- Deploy: schemas/dashboard_public/tables/track_language_variations/columns/owner_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table

BEGIN;

ALTER TABLE "dashboard_public".track_language_variations ADD COLUMN owner_id uuid;
COMMIT;
