-- Revert: schemas/dashboard_public/tables/organization_profile_variations/constraints/organization_profile_variations_organization_id_fkey/constraint from pg

BEGIN;


ALTER TABLE "dashboard_public".organization_profile_variations 
    DROP CONSTRAINT organization_profile_variations_organization_id_fkey;

COMMIT;  

