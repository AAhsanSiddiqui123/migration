-- Verify schemas/dashboard_public/tables/progress_level_language_variations/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.progress_level_language_variations');


ROLLBACK;
