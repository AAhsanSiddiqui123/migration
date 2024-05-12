-- Deploy: schemas/dashboard_public/tables/action_impacts/constraints/action_impacts_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_impacts/table

BEGIN;

ALTER TABLE "dashboard_public".action_impacts
    ADD CONSTRAINT action_impacts_pkey PRIMARY KEY (id);
COMMIT;
