.class public Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/commonreport/PutRequest;
.source "SourceFile"


# static fields
.field public static final UNKNOWN:I = 0x270f


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 6

    .prologue
    .line 25
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/PutRequest;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 29
    const-string v1, "SELECT date, msg_id, msg_extra FROM reports WHERE status & 4 <> 0 AND (msg_id IN (19, 20, 24, 23,18,17,34,35,36,37,38,39,40,25,26,13,32,28,27,21,30,31,4249)) ORDER BY date DESC"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string v0, "msg_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    const-string v3, "msg_extra"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;

    invoke-direct {v5}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->withMessageId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->withMessageData(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;

    move-result-object v0

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing date from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/CommonReportPutRequest;->withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/PutRequest;

    .line 77
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 156
    :pswitch_0
    const/16 v0, 0x270f

    :goto_0
    return v0

    .line 108
    :pswitch_1
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->OUTGOING_CALL_BLOCKED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 110
    :pswitch_2
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->INCOMMING_CALL_BLOCKED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 112
    :pswitch_3
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->APP_LOCKED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 114
    :pswitch_4
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->APP_BLOCKED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 116
    :pswitch_5
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SIM_CHANGED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 118
    :pswitch_6
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCATE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_7
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SMS_HIDDEN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 122
    :pswitch_8
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->CALL_HIDDEN:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 124
    :pswitch_9
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->HASHCODE_MISMATCH:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 126
    :pswitch_a
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->HASHCODE_BLOCK_APP:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 128
    :pswitch_b
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SIGS_OUTDATED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 130
    :pswitch_c
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SCAN_OUTDATED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_d
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->STORAGE_ENCRYPTION_FAIL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_e
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->STORAGE_ENCRYPTION_SUCCESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 136
    :pswitch_f
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->ROOTED_DEVICE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 138
    :pswitch_10
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->PHISHING_SITE_DETECTED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 140
    :pswitch_11
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_SUCCESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 142
    :pswitch_12
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_PASSWORD_RESET:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 144
    :pswitch_13
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_NO_PASSWORD:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 146
    :pswitch_14
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->LOCK_FAIL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 148
    :pswitch_15
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SET_PASSWORD_SUCCESS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 150
    :pswitch_16
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SET_PASSWORD_FAIL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 152
    :pswitch_17
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->SET_CAMERA_STATE_FAIL:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 154
    :pswitch_18
    sget-object v0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item$MessageIds;->APP_PROTECTION_DISABLED:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_6
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
    .end packed-switch
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 88
    sparse-switch p1, :sswitch_data_0

    .line 96
    :goto_0
    return-object p2

    .line 94
    :sswitch_0
    const-string p2, ""

    goto :goto_0

    .line 88
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x20 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method
