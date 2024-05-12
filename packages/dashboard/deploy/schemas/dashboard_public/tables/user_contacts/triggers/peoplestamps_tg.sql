-- Deploy: schemas/dashboard_public/tables/user_contacts/triggers/peoplestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_contacts/table

BEGIN;

ALTER TABLE "dashboard_public".user_contacts ADD COLUMN created_by UUID;
ALTER TABLE "dashboard_public".user_contacts ADD COLUMN updated_by UUID;
CREATE TRIGGER peoplestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".user_contacts
FOR EACH ROW
EXECUTE PROCEDURE stamps.peoplestamps();
CREATE INDEX ON "dashboard_public".user_contacts (created_by);
CREATE INDEX ON "dashboard_public".user_contacts (updated_by);
COMMIT;
