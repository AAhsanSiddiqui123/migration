-- Deploy: schemas/dashboard_public/tables/track_groups/constraints/track_groups_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_groups/table

BEGIN;

ALTER TABLE "dashboard_public".track_groups
    ADD CONSTRAINT track_groups_pkey PRIMARY KEY (id);
COMMIT;
