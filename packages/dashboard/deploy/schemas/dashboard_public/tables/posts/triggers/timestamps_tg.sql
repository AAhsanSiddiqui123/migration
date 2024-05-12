-- Deploy: schemas/dashboard_public/tables/posts/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".posts ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".posts ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".posts ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".posts
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".posts (created_at);
CREATE INDEX ON "dashboard_public".posts (updated_at);
COMMIT;
