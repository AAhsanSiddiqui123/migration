-- Deploy: schemas/dashboard_public/tables/track_types/constraints/track_types_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/track_types/table

BEGIN;

ALTER TABLE "dashboard_public".track_types
    ADD CONSTRAINT track_types_pkey PRIMARY KEY (id);
COMMIT;
