.class public Lde/gdata/mobilesecurity/database/core/dao/Reports;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Long;)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 153
    const-string v0, "getResultWithID"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    const-string v2, "reports"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "id"

    aput-object v6, v3, v4

    const-string v4, "date"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "warning"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "infection"

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "msg"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "msg_id"

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "msg_extra"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    const-string v6, "status"

    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v6, "profile"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->a(Landroid/database/Cursor;)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v5

    .line 164
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    const-string v0, "getResultWithID"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 173
    :goto_0
    return-object v5

    .line 170
    :cond_0
    const-string v0, "getResultWithID: query failed, cursor is null"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 172
    const-string v0, "getResultWithID"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 14

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    const-string v0, "builScanResultFromCursor: cursor is equal to null. Returning null ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    .line 238
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 185
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const-string v0, "builScanResultFromCursor: result count of cursor is 0. Returning null"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    const-string v0, "id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 190
    const-string v0, "date"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 191
    const-string v0, "warning"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 192
    const-string v0, "infection"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 193
    const-string v0, "msg"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 194
    const-string v0, "msg_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 195
    const-string v0, "msg_extra"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 196
    const-string v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 197
    const-string v0, "profile"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 199
    const/4 v0, -0x1

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    const/4 v0, -0x1

    if-ne v3, v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    or-int/2addr v1, v0

    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    or-int/2addr v1, v0

    const/4 v0, -0x1

    if-ne v5, v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    or-int/2addr v1, v0

    const/4 v0, -0x1

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    :goto_6
    or-int/2addr v1, v0

    const/4 v0, -0x1

    if-ne v7, v0, :cond_7

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v1, v0

    const/4 v0, -0x1

    if-ne v8, v0, :cond_8

    const/4 v0, 0x1

    :goto_8
    or-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 201
    const-string v0, "builScanResultFromCursor: table structure not correct. Returning null ..."

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .line 204
    :cond_9
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 205
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 207
    :goto_9
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    .line 208
    :goto_a
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 209
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 210
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 211
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 212
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    :try_start_0
    new-instance v2, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v2, v9, v10, v11}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Ljava/util/Date;II)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_b
    invoke-virtual {v2, v12, v13}, Lde/gdata/mobilesecurity/scan/LogEntry;->setTableId(J)V

    .line 226
    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 227
    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->setInfected()V

    .line 228
    :cond_b
    invoke-virtual {v2, v5}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 229
    invoke-virtual {v2, v6}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2, v4}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessage(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v2, v7}, Lde/gdata/mobilesecurity/scan/LogEntry;->setStatus(I)V

    .line 232
    invoke-virtual {v2, v8}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 206
    :cond_c
    const/4 v0, 0x0

    goto :goto_9

    .line 207
    :cond_d
    const/4 v1, 0x0

    goto :goto_a

    .line 218
    :catch_0
    move-exception v2

    .line 219
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parsing date ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "] failed: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/ParseException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 222
    new-instance v2, Lde/gdata/mobilesecurity/scan/LogEntry;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v2, v3, v9, v10}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Ljava/util/Date;II)V

    goto :goto_b
.end method

.method public static clearAllLogEntries(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE reports SET status = status | 1 WHERE profile = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR profile = \'\' OR profile IS NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    const-string v1, "clearAllLogEntries"

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 347
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 349
    const-string v0, "clearAllLogEntries"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method public static clearOldLogEntries(Landroid/content/Context;Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM reports WHERE date < date (\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\') "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    const-string v1, "clearOldLogEntries"

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 363
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v0, "clearOldLogEntries"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public static deleteLogEntry(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 374
    const-string v0, "DELETE FROM reports WHERE id = ?"

    .line 377
    :try_start_0
    const-string v1, "deleteLogEntry"

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 378
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    const-string v0, "deleteLogEntry"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in deleteLogEntry() caught. Root cause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteLogEntryByMsgId(Landroid/content/Context;I)V
    .locals 7

    .prologue
    .line 393
    const-string v0, "deleteLogEntryByMsgId"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 395
    const-string v1, "reports"

    const-string v2, "msg_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    const-string v0, "deleteLogEntryByMsgId"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public static fillArrayListWithLogs(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lde/gdata/mobilesecurity/scan/LogEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT id,date,warning,infection,msg,msg_id,msg_extra,status,profile FROM reports WHERE status & 1 = 0 AND (profile = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IS NULL OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = \'\') ORDER BY "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " DESC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v5, "fillArrayListWithLogs"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 257
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 259
    if-eqz v7, :cond_5

    .line 260
    const-string v4, "id"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 261
    const-string v4, "date"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 262
    const-string v4, "warning"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 263
    const-string v4, "infection"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 264
    const-string v4, "msg"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 265
    const-string v4, "msg_id"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 266
    const-string v4, "msg_extra"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 267
    const-string v4, "status"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 268
    const-string v4, "profile"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 270
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 273
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 274
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 275
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    .line 276
    :goto_1
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    .line 277
    :goto_2
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 278
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 279
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 280
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 281
    move/from16 v0, v16

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 284
    :try_start_0
    new-instance v6, Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-static/range {v17 .. v17}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    const/16 v26, -0x1

    const/16 v27, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v6, v0, v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Ljava/util/Date;II)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_3
    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->setTableId(J)V

    .line 294
    if-eqz v4, :cond_0

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/scan/LogEntry;->setWarning()V

    .line 295
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lde/gdata/mobilesecurity/scan/LogEntry;->setInfected()V

    .line 296
    :cond_1
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageID(I)V

    .line 297
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessageExtra(Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setMessage(Ljava/lang/String;)V

    .line 299
    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setStatus(I)V

    .line 300
    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->setProfile(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 276
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 286
    :catch_0
    move-exception v6

    .line 287
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception while parsing ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v25, "]: "

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    .line 290
    new-instance v6, Lde/gdata/mobilesecurity/scan/LogEntry;

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v6, v0, v1, v2}, Lde/gdata/mobilesecurity/scan/LogEntry;-><init>(Ljava/util/Date;II)V

    goto :goto_3

    .line 305
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_5
    const-string v4, "fillArrayListWithLogs"

    invoke-static {v4}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public static fillCursorWithLogs(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status & 1 = 0 AND (profile = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IS NULL OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 321
    const-string v7, "date DESC"

    .line 323
    const-string v0, "fillCursorWithLogs"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 327
    :try_start_0
    const-string v1, "reports"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while executing fillCursorWithLogs(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0
.end method

.method public static getLatestResult(Landroid/content/Context;)Lde/gdata/mobilesecurity/scan/LogEntry;
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 90
    .line 91
    const-string v0, "getLatestResult"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 92
    const-string v1, "SELECT MAX(id) FROM reports"

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 94
    if-eqz v5, :cond_1

    .line 95
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 99
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 104
    :goto_1
    const-string v5, "getLatestResult"

    invoke-static {v5}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 105
    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    move-object v0, v4

    :goto_2
    return-object v0

    .line 98
    :cond_0
    const-string v0, "getLatestResult: no first item"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_0

    .line 102
    :cond_1
    const-string v0, "getLatestResult: cursor is null"

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->e(Ljava/lang/String;)V

    move-wide v0, v2

    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/dao/Reports;->a(Landroid/content/Context;Ljava/lang/Long;)Lde/gdata/mobilesecurity/scan/LogEntry;

    move-result-object v0

    goto :goto_2
.end method

.method public static insert(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)J
    .locals 5

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert log: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 39
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string v2, "date"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lde/gdata/mobilesecurity/util/MyDate;->toFormatedString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v2, "warning"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getWarning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 42
    const-string v2, "infection"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 43
    const-string v2, "msg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "msg_id"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 45
    const-string v2, "msg_extra"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v2, "status"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    const-string v2, "profile"

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v2, "reports"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 51
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    const-string v4, "RELOAD_LOGS"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 54
    const-string v2, "Insert log"

    invoke-static {v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 56
    return-wide v0
.end method

.method public static insertOrReplace(Landroid/content/Context;Lde/gdata/mobilesecurity/scan/LogEntry;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getWarning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 66
    :goto_0
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 67
    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyDate;->toFormatedString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INSERT OR REPLACE INTO reports  SELECT MAX(id), \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', coalesce(warning, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), coalesce(infection, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), coalesce(msg, \'\'), coalesce(msg_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), coalesce(msg_extra, \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'), coalesce(status, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), coalesce(profile, \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM reports WHERE msg_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND date > datetime(\'now\',  \'-1 day\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    const-string v1, "insertOrReplace"

    invoke-static {p0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 81
    const-string v0, "insertOrReplace"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 82
    return-void

    :cond_0
    move v0, v2

    .line 65
    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 66
    goto/16 :goto_1
.end method

.method public static updateDateInLogEntryById(Landroid/content/Context;J)Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    const-string v2, "updateDateInLogEntryById"

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 136
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 137
    const-string v4, "date"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->toFormatedString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v4, "reports"

    const-string v5, "id=?"

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 141
    const-string v3, "updateDateInLogEntryById"

    invoke-static {v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 143
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static updateDateInLogEntryByMsgId(Landroid/content/Context;Ljava/lang/Integer;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    const-string v2, "updateDateInLogEntryByMsgId"

    invoke-static {p0, v2}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 117
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 118
    const-string v4, "date"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->toFormatedString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v4, "reports"

    const-string v5, "msg_id=?"

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 123
    const-string v3, "updateDateInLogEntryByMsgId"

    invoke-static {v3}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 124
    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
