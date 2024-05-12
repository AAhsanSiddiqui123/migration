-- Revert: schemas/dashboard_public/tables/organization_profiles/triggers/organization_profiles_organization_id_immutable_tg from pg

BEGIN;
DROP TRIGGER organization_profiles_organization_id_immutable_tg ON "dashboard_public".organization_profiles;
COMMIT;  

