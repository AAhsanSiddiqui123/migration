-- Deploy: schemas/dashboard_public/tables/impact_language_variations/columns/owner_id/alterations/alt0000001463 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/impact_language_variations/table
-- requires: schemas/dashboard_public/tables/impact_language_variations/columns/owner_id/column

BEGIN;

ALTER TABLE "dashboard_public".impact_language_variations 
    ALTER COLUMN owner_id SET DEFAULT uuid_nil();
COMMIT;
