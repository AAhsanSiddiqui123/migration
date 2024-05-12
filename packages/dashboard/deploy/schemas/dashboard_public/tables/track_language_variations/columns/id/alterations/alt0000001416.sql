-- Deploy: schemas/dashboard_public/tables/track_language_variations/columns/id/alterations/alt0000001416 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_language_variations/table
-- requires: schemas/dashboard_public/tables/track_language_variations/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".track_language_variations 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
