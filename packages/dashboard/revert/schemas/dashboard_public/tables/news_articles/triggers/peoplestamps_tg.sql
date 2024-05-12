-- Revert: schemas/dashboard_public/tables/news_articles/triggers/peoplestamps_tg from pg

BEGIN;


ALTER TABLE "dashboard_public".news_articles DROP COLUMN created_by;
ALTER TABLE "dashboard_public".news_articles DROP COLUMN updated_by;

DROP TRIGGER peoplestamps_tg
ON "dashboard_public".news_articles;


COMMIT;  

