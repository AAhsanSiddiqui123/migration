-- Verify schemas/dashboard_public/types/SocialType on pg

BEGIN;

SELECT verify_type ('SocialType');

ROLLBACK;
