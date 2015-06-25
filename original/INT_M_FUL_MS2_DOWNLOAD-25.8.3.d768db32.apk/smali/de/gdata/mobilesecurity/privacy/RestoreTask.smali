.class public Lde/gdata/mobilesecurity/privacy/RestoreTask;
.super Lde/gdata/mobilesecurity/privacy/PrivacyTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/gdata/mobilesecurity/privacy/PrivacyTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lde/gdata/mobilesecurity/privacy/PrivacyDB;

.field private b:Lde/gdata/mobilesecurity/sms/SMSStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyTask;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 40
    new-instance v1, Lde/gdata/mobilesecurity/contacts/ContactStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;-><init>(Landroid/content/Context;)V

    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/RestoreTask;->a:Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getStoredContacts()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/contacts/Contact;

    .line 44
    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getOriginID()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/contacts/ContactStore;->addContact(Lde/gdata/mobilesecurity/contacts/Contact;)Landroid/util/Pair;

    move-result-object v0

    .line 47
    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/RestoreTask;->a:Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {v4, v3, v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->updateHiddenContact(Landroid/util/Pair;Landroid/util/Pair;)Z

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/RestoreTask;->a:Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 55
    const-string v1, "sms"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 57
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    new-instance v3, Lde/gdata/mobilesecurity/sms/SMS;

    invoke-direct {v3, v1}, Lde/gdata/mobilesecurity/sms/SMS;-><init>(Landroid/database/Cursor;)V

    .line 59
    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/RestoreTask;->b:Lde/gdata/mobilesecurity/sms/SMSStore;

    invoke-virtual {v4, v3}, Lde/gdata/mobilesecurity/sms/SMSStore;->saveSMS(Lde/gdata/mobilesecurity/sms/SMS;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 64
    const-string v1, "sms"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 66
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    new-instance v2, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/privacy/RestoreTask;->a:Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    .line 73
    new-instance v2, Lde/gdata/mobilesecurity/sms/SMSStore;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/RestoreTask;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/gdata/mobilesecurity/sms/SMSStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lde/gdata/mobilesecurity/privacy/RestoreTask;->b:Lde/gdata/mobilesecurity/sms/SMSStore;

    .line 75
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/RestoreTask;->a()V

    .line 76
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/RestoreTask;->b()V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/RestoreTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0d0496

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
