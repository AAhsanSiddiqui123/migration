-- Deploy: schemas/dashboard_public/tables/action_goals/constraints/action_goals_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/action_goals/table

BEGIN;

ALTER TABLE "dashboard_public".action_goals
    ADD CONSTRAINT action_goals_pkey PRIMARY KEY (id);
COMMIT;
