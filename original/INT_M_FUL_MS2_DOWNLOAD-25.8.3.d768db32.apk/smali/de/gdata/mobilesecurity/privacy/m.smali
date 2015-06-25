.class Lde/gdata/mobilesecurity/privacy/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lde/gdata/mobilesecurity/privacy/ChatFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lde/gdata/mobilesecurity/privacy/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    .prologue
    .line 318
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/m;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 341
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 342
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 343
    return-void

    .line 320
    :pswitch_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d04f3

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 324
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->i(Lde/gdata/mobilesecurity/privacy/ChatFragment;)I

    move-result v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v14

    new-instance v0, Lde/gdata/mobilesecurity/sms/SMS;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/m;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    iget-object v10, p0, Lde/gdata/mobilesecurity/privacy/m;->b:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Ljava/lang/String;JJZIIZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMS;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 327
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lde/gdata/mobilesecurity/privacy/n;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/n;-><init>(Lde/gdata/mobilesecurity/privacy/m;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/m;->c:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d04f1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
