.class public Lde/gdata/mobilesecurity/sms/SMS;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field public static final MESSAGE_TYPE_ALL:I = 0x0

.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_OUTBOX:I = 0x4

.field public static final MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final STATUS_COMPLETE:I = 0x0

.field public static final STATUS_FAILED:I = 0x40

.field public static final STATUS_NONE:I = -0x1

.field public static final STATUS_PENDING:I = 0x20


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJZIIZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 54
    const-string v0, "thread_id"

    const-string v1, "-1"

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "address"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "date"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v0, "protocol"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v1, "read"

    if-eqz p6, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v0, "status"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "type"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v1, "reply_path_present"

    if-eqz p9, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v0, "body"

    invoke-virtual {p0, v0, p10}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v0, "service_center"

    invoke-virtual {p0, v0, p11}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v1, "locked"

    if-eqz p12, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "address"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/sms/SMS;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "body"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/sms/SMS;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataFields()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lde/gdata/mobilesecurity/sms/SMSTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/sms/SMSTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/sms/SMSTable;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 92
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/sms/SMS;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThreadID()I
    .locals 1

    .prologue
    .line 84
    const-string v0, "thread_id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/sms/SMS;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 88
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/sms/SMS;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/sms/SMS;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 40
    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    const-string v0, "address"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/sms/SMS;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    return-void
.end method
