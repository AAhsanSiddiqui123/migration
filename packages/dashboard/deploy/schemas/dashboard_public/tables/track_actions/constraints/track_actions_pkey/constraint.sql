-- Deploy: schemas/dashboard_public/tables/track_actions/constraints/track_actions_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_actions/table

BEGIN;

ALTER TABLE "dashboard_public".track_actions
    ADD CONSTRAINT track_actions_pkey PRIMARY KEY (id);
COMMIT;
