-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships DROP COLUMN created_at;
ALTER TABLE "dashboard_memberships_public".app_memberships DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_memberships_public".app_memberships;

COMMIT;  

