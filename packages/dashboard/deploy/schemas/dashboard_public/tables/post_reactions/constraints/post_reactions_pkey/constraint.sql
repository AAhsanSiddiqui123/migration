-- Deploy: schemas/dashboard_public/tables/post_reactions/constraints/post_reactions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/post_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".post_reactions
    ADD CONSTRAINT post_reactions_pkey PRIMARY KEY (id);
COMMIT;
