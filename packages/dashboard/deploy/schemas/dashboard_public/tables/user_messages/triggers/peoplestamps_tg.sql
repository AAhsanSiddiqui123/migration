-- Deploy: schemas/dashboard_public/tables/user_messages/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_messages/table

BEGIN;

ALTER TABLE "dashboard_public".user_messages ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".user_messages ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_messages
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".user_messages (created_by);
CREATE INDEX ON "dashboard_public".user_messages (updated_by);
COMMIT;
