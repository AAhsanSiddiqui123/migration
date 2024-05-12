-- Verify: schemas/dashboard_public/tables/user_contacts/indexes/user_contacts_user_id_idx on pg

BEGIN;
SELECT verify_index('dashboard_public.user_contacts', 'user_contacts_user_id_idx');
COMMIT;  

