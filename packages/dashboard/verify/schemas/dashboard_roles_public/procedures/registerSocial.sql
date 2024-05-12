-- Verify schemas/dashboard_roles_public/procedures/registerSocial  on pg

BEGIN;

SELECT verify_function ('dashboard_roles_public.registerSocial');

ROLLBACK;
