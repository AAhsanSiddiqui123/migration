-- Verify: schemas/dashboard_public/tables/message_groups/grants/authenticated/select/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.message_groups', 'select', 'authenticated');
COMMIT;  

