-- Revert: schemas/dashboard_public/tables/user_connections/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_connections DROP COLUMN created_by;
ALTER TABLE "dashboard_public".user_connections DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".user_connections;


COMMIT;  

