-- Revert schemas/dashboard_public/views/view_track_and_track_action_datatags/view from pg

BEGIN;

DROP VIEW IF EXISTS dashboard_public.view_track_and_track_action_datatags;

COMMIT;
