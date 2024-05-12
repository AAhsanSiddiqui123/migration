-- Deploy: schemas/dashboard_limits_public/tables/app_limits/columns/actor_id/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_limits_public/schema
-- requires: schemas/dashboard_limits_public/tables/app_limits/table

BEGIN;

ALTER TABLE "dashboard_limits_public".app_limits ADD COLUMN actor_id uuid;
COMMIT;
