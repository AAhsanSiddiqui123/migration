-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/alterations/alt0000001393 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations
    DISABLE ROW LEVEL SECURITY;
COMMIT;
