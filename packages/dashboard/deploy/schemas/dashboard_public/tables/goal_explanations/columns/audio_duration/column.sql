-- Deploy: schemas/dashboard_public/tables/goal_explanations/columns/audio_duration/column to pg
-- made with <3 @ launchql.com

-- requires: schemas/dashboard_public/schema
-- requires: schemas/dashboard_public/tables/goal_explanations/table

BEGIN;

ALTER TABLE "dashboard_public".goal_explanations ADD COLUMN audio_duration interval;
COMMIT;
