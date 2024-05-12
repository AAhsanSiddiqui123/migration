-- Deploy: schemas/dashboard_public/tables/post_comments/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".post_comments ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".post_comments ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".post_comments ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".post_comments ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".post_comments
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".post_comments (created_at);
CREATE INDEX ON "dashboard_public".post_comments (updated_at);
COMMIT;
