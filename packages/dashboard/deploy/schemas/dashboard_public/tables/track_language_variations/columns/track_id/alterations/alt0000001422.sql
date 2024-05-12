-- Deploy: schemas/dashboard_public/tables/track_language_variations/columns/track_id/alterations/alt0000001422 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table
-- requires: schemas/dashboard_public/tables/track_language_variations/columns/track_id/column

BEGIN;

ALTER TABLE "dashboard_public".track_language_variations 
    ALTER COLUMN track_id SET NOT NULL;
COMMIT;
