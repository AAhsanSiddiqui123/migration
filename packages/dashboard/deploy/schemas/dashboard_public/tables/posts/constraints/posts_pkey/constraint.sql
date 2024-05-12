-- Deploy: schemas/dashboard_public/tables/posts/constraints/posts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/posts/table

BEGIN;

ALTER TABLE "dashboard_public".posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
COMMIT;
