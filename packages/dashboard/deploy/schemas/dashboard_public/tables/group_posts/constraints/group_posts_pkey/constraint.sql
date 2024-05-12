-- Deploy: schemas/dashboard_public/tables/group_posts/constraints/group_posts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_posts/table

BEGIN;

ALTER TABLE "dashboard_public".group_posts
    ADD CONSTRAINT group_posts_pkey PRIMARY KEY (id);
COMMIT;
