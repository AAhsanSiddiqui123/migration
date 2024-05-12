-- Verify schemas/dashboard_public/tables/progress_level_language_variations/policies/auth_ins  on pg

BEGIN;

SELECT verify_policy ('auth_ins', 'dashboard_public.progress_level_language_variations');


ROLLBACK;
