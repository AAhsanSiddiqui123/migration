-- Verify: schemas/dashboard_public/tables/post_reactions/policies/auth_ins/policy on pg

BEGIN;
SELECT verify_policy('auth_ins', 'dashboard_public.post_reactions');
COMMIT;  

