-- Revert: schemas/dashboard_memberships_public/tables/app_memberships/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".app_memberships DROP COLUMN created_by;
ALTER TABLE "dashboard_memberships_public".app_memberships DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_memberships_public".app_memberships;


COMMIT;  

