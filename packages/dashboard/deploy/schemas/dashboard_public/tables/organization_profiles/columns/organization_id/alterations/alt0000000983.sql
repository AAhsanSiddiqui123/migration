-- Deploy: schemas/dashboard_public/tables/organization_profiles/columns/organization_id/alterations/alt0000000983 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table
-- requires: schemas/dashboard_public/tables/organization_profiles/columns/organization_id/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles 
    ALTER COLUMN organization_id SET NOT NULL;
COMMIT;
