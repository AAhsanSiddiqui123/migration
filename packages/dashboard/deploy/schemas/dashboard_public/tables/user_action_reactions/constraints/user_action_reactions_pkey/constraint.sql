-- Deploy: schemas/dashboard_public/tables/user_action_reactions/constraints/user_action_reactions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_reactions/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_reactions
    ADD CONSTRAINT user_action_reactions_pkey PRIMARY KEY (id);
COMMIT;
