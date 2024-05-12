-- Revert: schemas/dashboard_memberships_public/tables/group_grants/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".group_grants DROP COLUMN created_at;
ALTER TABLE "dashboard_memberships_public".group_grants DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_memberships_public".group_grants;

COMMIT;  

