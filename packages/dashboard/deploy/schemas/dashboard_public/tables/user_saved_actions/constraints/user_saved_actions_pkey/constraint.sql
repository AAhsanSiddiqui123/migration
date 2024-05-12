-- Deploy: schemas/dashboard_public/tables/user_saved_actions/constraints/user_saved_actions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_saved_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_saved_actions
    ADD CONSTRAINT user_saved_actions_pkey PRIMARY KEY (id);
COMMIT;
