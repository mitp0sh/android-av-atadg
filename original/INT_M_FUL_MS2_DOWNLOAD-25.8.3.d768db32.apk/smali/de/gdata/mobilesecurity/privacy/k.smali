.class Lde/gdata/mobilesecurity/privacy/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivity;

.field final synthetic b:Lde/gdata/mobilesecurity/privacy/ChatFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iput-object p2, p0, Lde/gdata/mobilesecurity/privacy/k;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 250
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->a:Landroid/support/v7/app/ActionBarActivity;

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v1}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 253
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const-string v0, "contact_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 255
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    .line 256
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 257
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 272
    :goto_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->h(Lde/gdata/mobilesecurity/privacy/ChatFragment;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->normalizeNumbers([Ljava/lang/String;)V

    .line 273
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 276
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->a:Landroid/support/v7/app/ActionBarActivity;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/l;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/l;-><init>(Lde/gdata/mobilesecurity/privacy/k;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 260
    :cond_2
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    .line 261
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/k;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, v2}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v2

    .line 262
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    .line 263
    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v3, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;[Ljava/lang/String;)[Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    invoke-virtual {v2}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoto()[B

    move-result-object v0

    .line 266
    if-eqz v0, :cond_3

    .line 267
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, ""

    invoke-static {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 269
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/k;->b:Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
