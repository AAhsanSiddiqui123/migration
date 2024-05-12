-- Revert: schemas/dashboard_public/tables/user_forms/columns/form_id/alterations/alt0000001335 from pg

BEGIN;


ALTER TABLE "dashboard_public".user_forms 
    ALTER COLUMN form_id DROP NOT NULL;


COMMIT;  

