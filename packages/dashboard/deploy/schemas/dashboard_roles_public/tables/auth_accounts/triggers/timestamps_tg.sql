-- Deploy: schemas/dashboard_roles_public/tables/auth_accounts/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_public/schema
-- requires: schemas/dashboard_roles_public/tables/auth_accounts/table

BEGIN;

ALTER TABLE "dashboard_roles_public".auth_accounts ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_roles_public".auth_accounts ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_roles_public".auth_accounts ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_roles_public".auth_accounts ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_roles_public".auth_accounts
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_roles_public".auth_accounts (created_at);
CREATE INDEX ON "dashboard_roles_public".auth_accounts (updated_at);
COMMIT;
