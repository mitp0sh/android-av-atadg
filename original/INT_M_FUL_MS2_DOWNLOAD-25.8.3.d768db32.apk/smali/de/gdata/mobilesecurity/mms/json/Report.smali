.class public Lde/gdata/mobilesecurity/mms/json/Report;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lde/gdata/mobilesecurity/scan/LogEntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lde/gdata/mobilesecurity/scan/LogEntry;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/Report;->a:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    .line 27
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 66
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 50
    aget-object v2, v0, v4

    .line 51
    aget-object v0, v0, v3

    .line 53
    :try_start_0
    const-string v3, "MachineName"

    iget-object v4, p0, Lde/gdata/mobilesecurity/mms/json/Report;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v3, "Sender"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v3, "State"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v3, "FileName"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string v0, "VirusName"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    const/16 v4, 0xf

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v4

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 61
    const-string v0, "Date"

    const-string v4, "/Date( %d )/"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse LogEntry:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v2}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 69
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageExtra()Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    array-length v1, v0

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 116
    :cond_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 76
    new-instance v2, Ljava/io/StringReader;

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 81
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 82
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 90
    const-string v0, "([A-Za-z0-9. ]*) \\((.*)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 92
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 94
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    :try_start_1
    const-string v5, "MachineName"

    iget-object v6, p0, Lde/gdata/mobilesecurity/mms/json/Report;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v5, "Sender"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v5, "State"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v5, "FileName"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v0, "VirusName"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/scan/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    .line 108
    const-string v0, "Date"

    const-string v6, "/Date( %d )/"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 111
    :catch_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getJSONReports()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 40
    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Report;->b(Ljava/util/List;)V

    goto :goto_0

    .line 36
    :pswitch_1
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/mms/json/Report;->a(Ljava/util/List;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    const-string v0, "%d - %s - Infected: %b"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->getMessageId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->getDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lde/gdata/mobilesecurity/mms/json/Report;->b:Lde/gdata/mobilesecurity/scan/LogEntry;

    invoke-virtual {v3}, Lde/gdata/mobilesecurity/scan/LogEntry;->getInfected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
