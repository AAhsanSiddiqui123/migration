-- Verify: schemas/dashboard_public/tables/message_groups/grants/authenticated/delete/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.message_groups', 'delete', 'authenticated');
COMMIT;  

