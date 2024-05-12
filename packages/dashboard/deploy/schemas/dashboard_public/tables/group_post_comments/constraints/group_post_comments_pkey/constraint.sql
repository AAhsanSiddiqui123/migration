-- Deploy: schemas/dashboard_public/tables/group_post_comments/constraints/group_post_comments_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_comments/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_comments
    ADD CONSTRAINT group_post_comments_pkey PRIMARY KEY (id);
COMMIT;
