-- Verify: schemas/dashboard_public/tables/post_reactions/policies/auth_sel/policy on pg

BEGIN;
SELECT verify_policy('auth_sel', 'dashboard_public.post_reactions');
COMMIT;  

