-- Deploy: schemas/dashboard_public/tables/track_language_variations/indexes/track_language_variations_track_id_idx to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table
-- requires: schemas/dashboard_public/tables/track_language_variations/columns/track_id/column

BEGIN;
CREATE INDEX track_language_variations_track_id_idx ON "dashboard_public".track_language_variations (track_id);
COMMIT;
