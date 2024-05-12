-- Deploy: schemas/dashboard_public/tables/user_profiles/columns/local_leader_info/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/user_profiles/table

BEGIN;

ALTER TABLE "dashboard_public".user_profiles ADD COLUMN local_leader_info text;
COMMIT;
