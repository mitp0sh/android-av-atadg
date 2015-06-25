.class public Lde/gdata/mobilesecurity/util/MyDate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lde/gdata/mobilesecurity/util/UniqueThreadDateFormatter;->get()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static isOlderThan(Ljava/util/Date;I)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 52
    if-nez p0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v4, p1

    invoke-static {v4, v5}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toFormatedString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lde/gdata/mobilesecurity/util/UniqueThreadDateFormatter;->get()Ljava/text/SimpleDateFormat;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUserFriendlyString(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x2

    const/4 v1, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
