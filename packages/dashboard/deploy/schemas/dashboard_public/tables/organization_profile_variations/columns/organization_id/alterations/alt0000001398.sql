-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_id/alterations/alt0000001398 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table
-- requires: schemas/dashboard_public/tables/organization_profile_variations/columns/organization_id/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations 
    ALTER COLUMN organization_id SET NOT NULL;
COMMIT;
