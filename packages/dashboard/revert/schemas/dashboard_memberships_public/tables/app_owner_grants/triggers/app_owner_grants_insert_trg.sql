-- Revert: schemas/dashboard_memberships_public/tables/app_owner_grants/triggers/app_owner_grants_insert_trg from pg

BEGIN;
DROP TRIGGER app_owner_grants_insert_trg ON "dashboard_memberships_public".app_owner_grants;
COMMIT;  

