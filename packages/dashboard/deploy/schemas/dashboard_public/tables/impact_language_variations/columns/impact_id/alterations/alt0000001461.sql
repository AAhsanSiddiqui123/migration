-- Deploy: schemas/dashboard_public/tables/impact_language_variations/columns/impact_id/alterations/alt0000001461 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/table
-- requires: schemas/dashboard_public/tables/impact_language_variations/columns/impact_id/column

BEGIN;

ALTER TABLE "dashboard_public".impact_language_variations 
    ALTER COLUMN impact_id SET NOT NULL;
COMMIT;
