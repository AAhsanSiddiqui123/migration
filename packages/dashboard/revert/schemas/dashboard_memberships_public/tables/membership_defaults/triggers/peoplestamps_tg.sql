-- Revert: schemas/dashboard_memberships_public/tables/membership_defaults/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".membership_defaults DROP COLUMN created_by;
ALTER TABLE "dashboard_memberships_public".membership_defaults DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_memberships_public".membership_defaults;


COMMIT;  

