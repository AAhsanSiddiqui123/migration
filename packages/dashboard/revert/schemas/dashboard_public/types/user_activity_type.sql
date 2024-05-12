-- Revert dashboard:schemas/dashboard_public/types/activity_type from pg

BEGIN;

DROP TYPE user_activity_type;

COMMIT;
