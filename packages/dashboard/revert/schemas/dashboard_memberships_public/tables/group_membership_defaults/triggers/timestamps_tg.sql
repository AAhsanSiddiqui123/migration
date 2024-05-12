-- Revert: schemas/dashboard_memberships_public/tables/group_membership_defaults/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_membership_defaults DROP COLUMN created_at;
ALTER TABLE "dashboard_memberships_public".group_membership_defaults DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_memberships_public".group_membership_defaults;

COMMIT;  

