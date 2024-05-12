-- Verify: schemas/dashboard_public/tables/message_groups/table on pg

BEGIN;
SELECT verify_table('dashboard_public.message_groups');
COMMIT;  

