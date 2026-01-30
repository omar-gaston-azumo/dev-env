## Command to send emails from contact list

To send emails from the contact list, you have to use the commands in the vb project and then use the following command:

```sh
php bin/console messenger:consume -vv transport_email_generate_single transport_email_single_email transport_batch_email_generate_nc  transport_batch_email_send_nc transport_email_mass_generate_email transport_email_mass_send_email transport_user transport_email_single_email_nc transport_email_single_email_mass_email
```