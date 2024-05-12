-- Verify schemas/dashboard_public/tables/data_tag_language_variations/policies/auth_upd  on pg

BEGIN;

SELECT verify_policy ('auth_upd', 'dashboard_public.data_tag_language_variations');


ROLLBACK;
