-- Verify schemas/dashboard_private/procedures/update_track_bounds  on pg

BEGIN;

SELECT verify_function ('dashboard_private.update_track_bounds');

ROLLBACK;
