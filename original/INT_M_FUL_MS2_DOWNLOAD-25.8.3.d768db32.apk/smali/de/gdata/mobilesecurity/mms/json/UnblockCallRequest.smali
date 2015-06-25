.class public Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/PutRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/PutRequest;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const-string v2, "SELECT profile, identifier, action, queued FROM mdmrequests WHERE type = \'4\' AND status = 4;"

    .line 35
    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 37
    if-eqz v5, :cond_3

    .line 38
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    const/4 v2, 0x0

    .line 40
    const-string v3, ""

    .line 41
    const-string v0, "identifier"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 42
    const-string v0, "profile"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 45
    :try_start_0
    const-string v0, "queued"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1, v6}, Lde/gdata/mobilesecurity/activities/callfilter/BlockConfiguration;->getNameByPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    :goto_3
    new-instance v3, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    invoke-direct {v3}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;-><init>()V

    invoke-virtual {v3, v7}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->withProfileId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    move-result-object v3

    const-string v6, "identifier"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->withPhoneNumber(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->withFirstName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    move-result-object v3

    invoke-virtual {v3, v2}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->withLastName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    move-result-object v2

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    move-result-object v2

    const-string v0, "action"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x1f

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;->withIncoming(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/Item;

    move-result-object v0

    .line 58
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parsing date failed: ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "queued"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_1
    move v0, v1

    .line 53
    goto :goto_4

    .line 61
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 65
    :cond_3
    invoke-virtual {p0, v4}, Lde/gdata/mobilesecurity/mms/json/UnblockCallRequest;->withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/requestunblockcall/PutRequest;

    .line 66
    return-void

    :cond_4
    move-object v2, v3

    goto/16 :goto_3
.end method

.method public static flagItemsToSend(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    const-string v0, "UCR.flagItemsToSend"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    const-string v1, "UPDATE mdmrequests SET status = 4    WHERE type = \'4\' AND status = 0;"

    .line 78
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    const-string v0, "UCR.flagItemsToSend"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static flagSuccess(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 88
    const-string v0, "UCR.flagSuccess"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 90
    const-string v1, "UPDATE mdmrequests SET status = 1,  sent = current_timestamp WHERE type = \'4\' AND status = 4;"

    .line 94
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 96
    const-string v0, "UCR.flagSuccess"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 97
    return-void
.end method
