-- Verify schemas/dashboard_public/tables/user_dismissed_track_actions/policies/enable_row_level_security  on pg

BEGIN;

SELECT verify_security ('dashboard_public.user_dismissed_track_actions');

ROLLBACK;
