-- Verify: schemas/dashboard_public/tables/message_groups/grants/authenticated/update/grant on pg

BEGIN;
SELECT verify_table_grant('dashboard_public.message_groups', 'update', 'authenticated');
COMMIT;  

