-- Deploy: schemas/dashboard_public/tables/user_action_item_verifications/constraints/user_action_item_verifications_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_action_item_verifications/table

BEGIN;

ALTER TABLE "dashboard_public".user_action_item_verifications
    ADD CONSTRAINT user_action_item_verifications_pkey PRIMARY KEY (id);
COMMIT;
