-- Deploy: schemas/dashboard_public/tables/user_answers/columns/location/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_answers/table

BEGIN;

ALTER TABLE "dashboard_public".user_answers ADD COLUMN location geometry (Point, 4326);
COMMIT;
