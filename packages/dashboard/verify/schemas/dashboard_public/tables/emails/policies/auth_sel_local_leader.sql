-- Verify schemas/dashboard_public/tables/emails/policies/auth_sel_local_leader  on pg

BEGIN;

SELECT verify_policy ('auth_sel_local_leader', 'dashboard_public.emails');


ROLLBACK;
