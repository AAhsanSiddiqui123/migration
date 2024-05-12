-- Revert: schemas/dashboard_roles_public/tables/auth_accounts/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_roles_public".auth_accounts DROP COLUMN created_at;
ALTER TABLE "dashboard_roles_public".auth_accounts DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_roles_public".auth_accounts;

COMMIT;  

