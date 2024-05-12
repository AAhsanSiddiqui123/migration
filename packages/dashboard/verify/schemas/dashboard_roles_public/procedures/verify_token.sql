-- Verify schemas/dashboard_roles_public/procedures/verify_token  on pg

BEGIN;

SELECT verify_function ('dashboard_roles_public.verify_token');

ROLLBACK;
