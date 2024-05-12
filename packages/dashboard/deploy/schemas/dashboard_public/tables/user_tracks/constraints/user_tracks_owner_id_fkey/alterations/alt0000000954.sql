-- Deploy: schemas/dashboard_public/tables/user_tracks/constraints/user_tracks_owner_id_fkey/alterations/alt0000000954 to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/constraints/user_tracks_owner_id_fkey/constraint

BEGIN;
COMMENT ON CONSTRAINT user_tracks_owner_id_fkey ON "dashboard_public".user_tracks IS E'@omit manyToMany';
COMMIT;
