-- Revert: schemas/dashboard_memberships_public/tables/app_grants/triggers/app_grants_insert_trg from pg

BEGIN;
DROP TRIGGER app_grants_insert_trg ON "dashboard_memberships_public".app_grants;
COMMIT;  

