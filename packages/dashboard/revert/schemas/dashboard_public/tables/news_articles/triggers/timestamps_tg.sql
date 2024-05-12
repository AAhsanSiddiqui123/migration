-- Revert: schemas/dashboard_public/tables/news_articles/triggers/timestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN created_at;
ALTER TABLE "dashboard_public".news_articles DROP COLUMN updated_at;

DROP TRIGGER timestamps_tg ON "dashboard_public".news_articles;

COMMIT;  

