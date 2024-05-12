-- Deploy: schemas/dashboard_public/tables/action_variations/constraints/action_variations_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_variations/table

BEGIN;

ALTER TABLE "dashboard_public".action_variations
    ADD CONSTRAINT action_variations_pkey PRIMARY KEY (id);
COMMIT;
