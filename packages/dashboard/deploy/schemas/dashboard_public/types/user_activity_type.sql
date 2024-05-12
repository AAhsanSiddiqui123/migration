-- Deploy dashboard:schemas/dashboard_public/types/activity_type to pg

BEGIN;

CREATE TYPE user_activity_type AS ENUM ('onboarded', 'action_completed','admin','referral');

COMMIT;
