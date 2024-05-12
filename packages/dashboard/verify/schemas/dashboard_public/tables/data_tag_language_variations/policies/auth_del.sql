-- Verify schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_del  on pg

BEGIN;

SELECT verify_policy ('auth_del', 'dashboard_public.data_tag_language_variations');


ROLLBACK;
