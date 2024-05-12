-- Verify schemas/dashboard_public/tables/emails/alterations/alter_table_add_social_id  on pg

BEGIN;

SELECT social_id FROM dashboard_public.emails LIMIT 1;

ROLLBACK;
