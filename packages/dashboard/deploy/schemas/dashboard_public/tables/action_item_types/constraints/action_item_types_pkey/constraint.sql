-- Deploy: schemas/dashboard_public/tables/action_item_types/constraints/action_item_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_item_types/table

BEGIN;

ALTER TABLE "dashboard_public".action_item_types
    ADD CONSTRAINT action_item_types_pkey PRIMARY KEY (id);
COMMIT;
