-- Deploy: schemas/dashboard_public/tables/news_articles/constraints/news_articles_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/news_articles/table

BEGIN;

ALTER TABLE "dashboard_public".news_articles
    ADD CONSTRAINT news_articles_pkey PRIMARY KEY (id);
COMMIT;
