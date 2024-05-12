-- Deploy: schemas/dashboard_public/tables/user_tracks/constraints/user_tracks_pkey/constraint to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".user_tracks
    ADD CONSTRAINT user_tracks_pkey PRIMARY KEY (id);
COMMIT;
