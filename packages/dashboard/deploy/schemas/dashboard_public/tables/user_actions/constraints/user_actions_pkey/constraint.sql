-- Deploy: schemas/dashboard_public/tables/user_actions/constraints/user_actions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_actions/table

BEGIN;

ALTER TABLE "dashboard_public".user_actions
    ADD CONSTRAINT user_actions_pkey PRIMARY KEY (id);
COMMIT;
