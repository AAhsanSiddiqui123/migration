-- Deploy: schemas/dashboard_public/tables/organization_profiles/policies/enable_row_level_security to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles
    ENABLE ROW LEVEL SECURITY;
COMMIT;
