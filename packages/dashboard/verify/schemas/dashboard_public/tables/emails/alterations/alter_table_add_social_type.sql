-- Verify schemas/dashboard_public/tables/emails/alterations/alter_table_add_social_type  on pg

BEGIN;

SELECT social_type FROM dashboard_public.emails LIMIT 1;

ROLLBACK;
