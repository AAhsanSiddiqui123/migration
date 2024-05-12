-- Deploy: schemas/dashboard_public/tables/news_articles/triggers/timestamps_tg to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;

ALTER TABLE "dashboard_public".news_articles ADD COLUMN created_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".news_articles ALTER COLUMN created_at SET DEFAULT NOW();
ALTER TABLE "dashboard_public".news_articles ADD COLUMN updated_at TIMESTAMPTZ;
ALTER TABLE "dashboard_public".news_articles ALTER COLUMN updated_at SET DEFAULT NOW();
CREATE TRIGGER timestamps_tg
BEFORE UPDATE OR INSERT ON "dashboard_public".news_articles
FOR EACH ROW
EXECUTE PROCEDURE stamps.timestamps();
CREATE INDEX ON "dashboard_public".news_articles (created_at);
CREATE INDEX ON "dashboard_public".news_articles (updated_at);
COMMIT;
