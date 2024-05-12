-- Revert: schemas/dashboard_memberships_public/tables/app_admin_grants/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_admin_grants DROP COLUMN created_at;
ALTER TABLE "dashboard_memberships_public".app_admin_grants DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_memberships_public".app_admin_grants;

COMMIT;  

