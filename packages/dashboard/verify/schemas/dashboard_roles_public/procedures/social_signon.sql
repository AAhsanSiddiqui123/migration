-- Verify schemas/dashboard_roles_public/procedures/social_signon  on pg

BEGIN;

SELECT verify_function ('dashboard_roles_public.social_signon');

ROLLBACK;
