-- Deploy: schemas/dashboard_public/tables/organization_profiles/columns/reputation/alterations/alt0000000982 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table
-- requires: schemas/dashboard_public/tables/organization_profiles/columns/reputation/column

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles 
    ALTER COLUMN reputation SET DEFAULT 0;
COMMIT;
