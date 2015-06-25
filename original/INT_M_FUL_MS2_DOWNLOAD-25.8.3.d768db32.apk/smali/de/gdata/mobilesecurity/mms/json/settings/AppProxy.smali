.class public Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    .line 25
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->b:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public write()V
    .locals 8

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getProfileId()Ljava/lang/Integer;

    move-result-object v2

    .line 35
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 37
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getConfig()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->getEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 38
    :goto_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getConfig()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 39
    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getConfig()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    move-result-object v4

    invoke-virtual {v4}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->getPasswordRecoveryMail()Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v5, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getConfig()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    move-result-object v5

    invoke-virtual {v5}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->getMode()Ljava/lang/Integer;

    move-result-object v5

    .line 42
    if-eqz v1, :cond_1

    .line 43
    new-instance v6, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {v6}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;-><init>()V

    const v7, -0x5f8c4059

    invoke-virtual {v6, v1, v7}, Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;->Decode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v1}, Lde/gdata/mobilesecurity/util/MyUtil;->encryptAndEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT OR REPLACE INTO applockconfig SELECT MAX(id), \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", 0, \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v4, :cond_3

    const-string v0, "null"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", 1, null, null FROM applockconfig WHERE configuration = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->b:Landroid/content/Context;

    const-string v2, "AP.write"

    invoke-static {v1, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 57
    invoke-virtual {p0, v1}, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->writeApps(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_3
    const-string v0, "AP.write"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 47
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 59
    :catch_0
    move-exception v1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caused an exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public writeApps(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getProfileId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getConfig()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->getMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 74
    const-string v4, "INSERT INTO protectedapps (configuration,name,identifier,permissions,lockmode,hashcode) VALUES (?,?,?,?,?,?)"

    .line 75
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 77
    new-array v0, v6, [Ljava/lang/String;

    aput-object v2, v0, v11

    .line 78
    const-string v1, "DELETE FROM protectedapps WHERE configuration = ?"

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/AppProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;->getProtected()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 84
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;->getHashCode()Ljava/lang/Integer;

    move-result-object v7

    .line 85
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    sget-object v8, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config$Modes;->WHITELIST:Ljava/lang/Integer;

    if-ne v3, v8, :cond_2

    .line 88
    if-eqz v1, :cond_1

    .line 89
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100
    :goto_1
    const/4 v8, 0x1

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    const/4 v8, 0x2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    const/4 v8, 0x3

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Item;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 103
    const/4 v0, 0x4

    sget v8, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->ALLOW_REQUEST:I

    int-to-long v8, v8

    invoke-virtual {v5, v0, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    const/4 v0, 0x5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v5, v0, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    if-nez v7, :cond_4

    .line 107
    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 111
    :goto_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Statement "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " caused an exception"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    :cond_1
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->DENIED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 93
    :cond_2
    if-eqz v1, :cond_3

    .line 94
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    sget v8, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->LOCKED:I

    or-int/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 96
    :cond_3
    sget v1, Lde/gdata/mobilesecurity/activities/applock/LockedApp;->GRANTED:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 109
    :cond_4
    const/4 v0, 0x6

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v5, v0, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 118
    :cond_5
    return-void
.end method
