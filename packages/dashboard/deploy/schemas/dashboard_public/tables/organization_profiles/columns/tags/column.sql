-- Deploy: schemas/dashboard_public/tables/organization_profiles/columns/tags/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profiles/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profiles ADD COLUMN tags citext[];
COMMIT;
