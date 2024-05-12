-- Deploy: schemas/dashboard_public/tables/post_comments/constraints/post_comments_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".post_comments
    ADD CONSTRAINT post_comments_pkey PRIMARY KEY (id);
COMMIT;
