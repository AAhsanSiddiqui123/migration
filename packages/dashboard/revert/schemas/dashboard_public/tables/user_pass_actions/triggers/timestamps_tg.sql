-- Revert: schemas/dashboard_public/tables/user_pass_actions/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".user_pass_actions DROP COLUMN created_at;
ALTER TABLE "dashboard_public".user_pass_actions DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".user_pass_actions;

COMMIT;  

