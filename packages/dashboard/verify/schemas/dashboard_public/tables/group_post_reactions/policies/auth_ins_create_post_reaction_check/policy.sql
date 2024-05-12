-- Verify: schemas/dashboard_public/tables/group_post_reactions/policies/auth_ins_create_post_reaction_check/policy on pg

BEGIN;
SELECT verify_policy('auth_ins_create_post_reaction_check', 'dashboard_public.group_post_reactions');
COMMIT;  

