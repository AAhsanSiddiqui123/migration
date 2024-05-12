-- Deploy: schemas/dashboard_public/tables/post_reactions/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".post_reactions ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".post_reactions ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".post_reactions ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".post_reactions ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".post_reactions
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".post_reactions (created_at);
CREATE INDEX ON "dashboard_public".post_reactions (updated_at);
COMMIT;
