-- Deploy: schemas/dashboard_roles_public/procedures/confirm_delete_account/procedure to pg
-- made with <3 @ launchql.com



BEGIN;

CREATE FUNCTION "dashboard_roles_public".confirm_delete_account (
  user_id uuid,
  token text
)
  RETURNS boolean
  AS $$
DECLARE
  v_expires_interval interval = interval '3 days';
  account_deletion_email_attempts int;
  account_deletion_email_sent_at timestamptz;
  first_failed_account_deletion_email_attempt timestamptz;
BEGIN
  account_deletion_email_sent_at = "dashboard_simple_secrets".get(confirm_delete_account.user_id, 'account_deletion_email_sent_at');
  IF (account_deletion_email_sent_at IS NOT NULL AND 
    account_deletion_email_sent_at + v_expires_interval < NOW() 
  ) THEN 
    
    PERFORM "dashboard_simple_secrets".del(confirm_delete_account.user_id, ARRAY[
        'account_deletion_email_sent_at',
        'account_deletion_email_attempts',
        'first_failed_account_deletion_email_attempt'
    ]);
    PERFORM "dashboard_encrypted".del(confirm_delete_account.user_id, 'account_deletion_token');
    RETURN FALSE;
  END IF;
  IF ("dashboard_encrypted".verify (confirm_delete_account.user_id, 'account_deletion_token', confirm_delete_account.token) ) THEN
    PERFORM "dashboard_simple_secrets".del(confirm_delete_account.user_id, ARRAY[
        'account_deletion_email_sent_at',
        'account_deletion_email_attempts',
        'first_failed_account_deletion_email_attempt'
    ]);
    PERFORM "dashboard_encrypted".del(confirm_delete_account.user_id, 'account_deletion_token');
    DELETE FROM "dashboard_public".users WHERE id = confirm_delete_account.user_id;
    RETURN TRUE;
  ELSE
    IF (
        first_failed_account_deletion_email_attempt IS NULL OR
        first_failed_account_deletion_email_attempt + v_expires_interval < NOW()
    ) THEN
        account_deletion_email_attempts = 1;
        first_failed_account_deletion_email_attempt = NOW();
    ELSE 
        account_deletion_email_attempts = account_deletion_email_attempts + 1;
    END IF;
    PERFORM "dashboard_simple_secrets".set(confirm_delete_account.user_id, 'account_deletion_email_attempts', account_deletion_email_attempts);
    PERFORM "dashboard_simple_secrets".set(confirm_delete_account.user_id, 'first_failed_account_deletion_email_attempt', first_failed_account_deletion_email_attempt);
    RETURN FALSE;
  END IF;
END;
$$
LANGUAGE 'plpgsql'
VOLATILE
SECURITY DEFINER;
GRANT EXECUTE ON FUNCTION "dashboard_roles_public".confirm_delete_account TO anonymous, authenticated;
COMMIT;
