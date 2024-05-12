-- Deploy: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/organization_profile_variations/table

BEGIN;

ALTER TABLE "dashboard_public".organization_profile_variations
    ADD CONSTRAINT organization_profile_variations_pkey PRIMARY KEY (id);
COMMIT;
