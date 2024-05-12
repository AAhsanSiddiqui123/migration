-- Revert: schemas/dashboard_public/tables/user_contacts/alterations/alt0000000599 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_contacts
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

