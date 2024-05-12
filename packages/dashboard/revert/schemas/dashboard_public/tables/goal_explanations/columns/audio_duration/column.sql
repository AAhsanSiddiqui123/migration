-- Revert: schemas/dashboard_public/tables/goal_explanations/columns/audio_duration/column from pg

BEGIN;


ALTER TABLE "dashboard_public".goal_explanations DROP COLUMN audio_duration;
COMMIT;  

