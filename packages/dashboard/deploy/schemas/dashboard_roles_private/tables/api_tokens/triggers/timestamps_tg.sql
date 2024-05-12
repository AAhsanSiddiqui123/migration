-- Deploy: schemas/dashboard_roles_private/tables/api_tokens/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_roles_private/schema
-- requires: schemas/dashboard_roles_private/tables/api_tokens/table

BEGIN;

ALTER TABLE "dashboard_roles_private".api_tokens ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_roles_private".api_tokens ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_roles_private".api_tokens ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_roles_private".api_tokens ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_roles_private".api_tokens
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_roles_private".api_tokens (created_at);
CREATE INDEX ON "dashboard_roles_private".api_tokens (updated_at);
COMMIT;
