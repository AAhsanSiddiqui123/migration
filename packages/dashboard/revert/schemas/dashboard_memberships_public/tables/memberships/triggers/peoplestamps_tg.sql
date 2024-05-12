-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN created_by;
ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_memberships_public".memberships;


COMMIT;  

