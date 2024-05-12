-- Deploy: schemas/dashboard_public/tables/action_items/constraints/action_items_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_items/table

BEGIN;

ALTER TABLE "dashboard_public".action_items
    ADD CONSTRAINT action_items_pkey PRIMARY KEY (id);
COMMIT;
