.class public Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Date:Ljava/util/Date;

.field private MessageData:Ljava/lang/String;

.field private MessageId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->Date:Ljava/util/Date;

    return-object v0
.end method

.method public getMessageData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->MessageData:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->MessageId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->Date:Ljava/util/Date;

    .line 39
    return-void
.end method

.method public setMessageData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->MessageData:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setMessageId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->MessageId:Ljava/lang/Integer;

    .line 52
    return-void
.end method

.method public withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->Date:Ljava/util/Date;

    .line 47
    return-object p0
.end method

.method public withMessageData(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->MessageData:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public withMessageId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonreport/Item;->MessageId:Ljava/lang/Integer;

    .line 60
    return-object p0
.end method
