-- Verify: schemas/dashboard_public/tables/user_answers/policies/auth_sel_admin/alterations/alt0000001340 on pg

BEGIN;
SELECT verify_policy('auth_sel_admin', 'dashboard_public.user_answers');
COMMIT;  

