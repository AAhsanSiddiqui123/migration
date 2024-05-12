-- Revert: schemas/dashboard_public/tables/organization_profile_variations/triggers/_000000000_ensure_insert_organization_profile_id from pg

BEGIN;
DROP TRIGGER _000000000_ensure_insert_organization_profile_id ON "dashboard_public".organization_profile_variations;
COMMIT;  

