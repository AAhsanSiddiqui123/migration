-- Deploy: schemas/dashboard_public/tables/user_action_items/constraints/user_action_items_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_items/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_items
    ADD CONSTRAINT user_action_items_pkey PRIMARY KEY (id);
COMMIT;
