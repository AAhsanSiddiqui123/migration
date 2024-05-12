-- Deploy: schemas/dashboard_public/tables/related_actions/constraints/related_actions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/related_actions/table

BEGIN;

ALTER TABLE "dashboard_public".related_actions
    ADD CONSTRAINT related_actions_pkey PRIMARY KEY (id);
COMMIT;
