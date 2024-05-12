-- Revert schemas/dashboard_public/types/SocialType from pg

BEGIN;

DROP TYPE SocialType;

COMMIT;
