-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/columns/name/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations ADD COLUMN name text;
COMMIT;
