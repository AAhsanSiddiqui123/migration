-- Revert: schemas/dashboard_public/tables/users/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".users DROP COLUMN created_at;
ALTER TABLE "dashboard_public".users DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".users;

COMMIT;  

