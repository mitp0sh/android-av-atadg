.class public Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MMS_CONTACTS_CHANGED:Ljava/lang/String; = "MMS_CONTACTS_CHANGED"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->a:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->b:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public write()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyDB;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyDB;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 42
    const-string v1, "mms_contact"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "source_id"

    aput-object v4, v2, v8

    const-string v4, "profile_id"

    aput-object v4, v2, v9

    const/4 v4, 0x2

    const-string v5, "id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 47
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    new-instance v2, Landroid/util/Pair;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->a:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;

    .line 55
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;

    .line 56
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->getProfileId()Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;->getProfileId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v2, v6, v0}, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->writeCurrentContact(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;ILandroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 64
    new-instance v4, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->b:Landroid/content/Context;

    invoke-direct {v4, v2, v1, v5}, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;-><init>(IILandroid/content/Context;)V

    .line 65
    invoke-virtual {v4}, Lde/gdata/mobilesecurity/privacy/mms/ContactDeleter;->delete()V

    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string v2, "MMS_CONTACTS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 76
    :goto_3
    new-instance v0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->cleanAll()V

    .line 77
    return-void

    .line 74
    :cond_4
    const-string v0, "ContactProxy can not send broadcast"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public writeCurrentContact(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 81
    const-string v1, "source_id"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v1, "first_name"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v1, "last_name"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "middle_name"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getMiddleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "name_prefix"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getNamePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "visibility"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;->getVisibility()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v1, "profile_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v1, "mms_contact"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 91
    new-instance v0, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/ContactProxy;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;-><init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/contact/Item;I)V

    .line 92
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/mms/ContactWriter;->write()V

    .line 93
    return-void
.end method
