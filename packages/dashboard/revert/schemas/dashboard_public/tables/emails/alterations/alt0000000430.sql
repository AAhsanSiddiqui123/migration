-- Revert: schemas/dashboard_public/tables/emails/alterations/alt0000000430 from pg

BEGIN;


ALTER TABLE "dashboard_public".emails
    ENABLE ROW LEVEL SECURITY;

COMMIT;  

