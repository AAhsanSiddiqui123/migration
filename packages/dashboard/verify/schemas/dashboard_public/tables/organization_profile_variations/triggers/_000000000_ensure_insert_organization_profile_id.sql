-- Verify: schemas/dashboard_public/tables/organization_profile_variations/triggers/_000000000_ensure_insert_organization_profile_id on pg

BEGIN;
SELECT verify_trigger('dashboard_public._000000000_ensure_insert_organization_profile_id');
COMMIT;  

