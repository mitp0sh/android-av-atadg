.class Lde/gdata/mobilesecurity/privacy/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;

.field final synthetic b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/CallLogFragment;Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/a;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/a;->a:Landroid/support/v7/app/ActionBarActivity;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/a;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->a(Lde/gdata/mobilesecurity/privacy/CallLogFragment;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "contact_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 202
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    .line 203
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    iput-object v3, v2, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->m_numbers:[Ljava/lang/String;

    .line 210
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    iget-object v0, v0, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->m_numbers:[Ljava/lang/String;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers([Ljava/lang/String;)V

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 214
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/a;->a:Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/b;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/b;-><init>(Lde/gdata/mobilesecurity/privacy/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 205
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 206
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/a;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/a;->b:Lde/gdata/mobilesecurity/privacy/CallLogFragment;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v2, Lde/gdata/mobilesecurity/privacy/CallLogFragment;->m_numbers:[Ljava/lang/String;

    goto :goto_1
.end method
