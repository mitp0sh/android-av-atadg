.class public Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;
.super Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "([A-Za-z0-9. ]*) \\((.*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 34
    const-string v2, "SELECT date, infection, msg_id, msg_extra FROM reports WHERE status & 4 <> 0 AND (msg_id IN (12, 11)) ORDER BY date DESC"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    const-string v0, "infection"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 43
    const-string v3, "msg_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 44
    const-string v4, "msg_extra"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    const-string v5, "date"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "\\|"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xc

    if-ne v4, v6, :cond_2

    .line 51
    array-length v3, v0

    if-le v3, v8, :cond_0

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    invoke-direct {v4}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;-><init>()V

    sget-object v6, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item$Senders;->SCANNER:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withSender(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v4

    sget-object v6, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item$States;->VIRUS:Ljava/lang/Integer;

    invoke-virtual {v4, v6}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withState(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v4, v6}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withFileName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v4

    const/4 v6, 0x2

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withVirusName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v0

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing date from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/text/ParseException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 63
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    .line 64
    array-length v3, v0

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-direct {p0, v0, v3}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->a([Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 68
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    sget-object v4, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    :try_start_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v4

    new-instance v6, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    invoke-direct {v6}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;-><init>()V

    sget-object v7, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item$Senders;->SCANNER:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withSender(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v6

    sget-object v7, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item$States;->VIRUS:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withState(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withFileName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withVirusName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v0

    invoke-static {v5}, Lde/gdata/mobilesecurity/util/MyDate;->fromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 77
    :catch_1
    move-exception v0

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] failed: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/text/ParseException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 87
    :cond_4
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/mms/json/FileScanReportPutRequest;->withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/PutRequest;

    .line 89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private a([Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 102
    new-instance v0, Ljava/io/StringReader;

    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 108
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while reading infections from log extra: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    .line 115
    :cond_0
    return v1
.end method

.method public static flagItemsToSend(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 4

    .prologue
    .line 124
    const-string v0, "FSRPR.flagItemsToSend"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 125
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " NOT "

    .line 127
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE reports SET status = status | 4 WHERE status & 2 = 0 AND (profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN (\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Private"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Toddler"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Teenager"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\') OR profile IS NULL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "OR profile = \'\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "FSRPR.flagItemsToSend"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 135
    return-void

    .line 125
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static flagSuccess(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 5

    .prologue
    .line 143
    const-string v0, "FSRPR.flagSuccess"

    invoke-static {p0, v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getUiOptionBus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " NOT "

    .line 145
    :goto_0
    const/16 v2, 0xfb

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE reports SET status = (status | 2) & "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE status & "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <> 0 AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN (\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Private"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Toddler"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Teenager"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\') OR profile IS NULL OR profile = \'\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string v0, "FSRPR.flagSuccess"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 155
    return-void

    .line 144
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
