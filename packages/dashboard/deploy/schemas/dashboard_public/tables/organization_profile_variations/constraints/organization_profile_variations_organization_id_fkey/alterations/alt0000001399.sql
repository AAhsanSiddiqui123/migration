-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_organization_id_fkey/alterations/alt0000001399 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_organization_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT organization_profile_variations_organization_id_fkey ON "dashboard_public".organization_profile_variations IS E'@omit manyToMany';
COMMIT;
