-- Revert: schemas/dashboard_public/tables/connected_accounts/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN created_at;
ALTER TABLE "dashboard_public".connected_accounts DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".connected_accounts;

COMMIT;  

