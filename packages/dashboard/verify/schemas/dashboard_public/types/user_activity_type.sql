-- Verify dashboard:schemas/dashboard_public/types/activity_type on pg

BEGIN;

SELECT verify_type ('user_activity_type');

ROLLBACK;
