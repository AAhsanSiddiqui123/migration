-- Verify schemas/dashboard_public/views/view_track_and_track_action_datatags/view on pg

BEGIN;

SELECT verify_view ('dashboard_public.view_track_and_track_action_datatags');

ROLLBACK;
