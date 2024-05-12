-- Deploy: schemas/dashboard_public/tables/group_post_reactions/constraints/group_post_reactions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/group_post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".group_post_reactions
    ADD CONSTRAINT group_post_reactions_pkey PRIMARY KEY (id);
COMMIT;
