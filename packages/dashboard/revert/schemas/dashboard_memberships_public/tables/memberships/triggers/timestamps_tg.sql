-- Revert: schemas/dashboard_memberships_public/tables/memberships/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN created_at;
ALTER TABLE "dashboard_memberships_public".memberships DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_memberships_public".memberships;

COMMIT;  

