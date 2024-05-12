-- Deploy: schemas/dashboard_public/tables/user_tracks/columns/user_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_tracks/table

BEGIN;

ALTER TABLE "dashboard_public".user_tracks ADD COLUMN user_id uuid;
COMMIT;
