-- Deploy: schemas/dashboard_public/tables/organization_profiles/columns/id/alterations/alt0000000980 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table
-- requires: schemas/dashboard_public/tables/organization_profiles/columns/id/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles 
    ALTER COLUMN id SET NOT NULL;
COMMIT;
