-- Revert: schemas/dashboard_permissions_public/tables/app_permissions/triggers/app_permissions_insert_trg from pg

BEGIN;
DROP TRIGGER app_permissions_insert_trg ON "dashboard_permissions_public".app_permissions;
COMMIT;  

