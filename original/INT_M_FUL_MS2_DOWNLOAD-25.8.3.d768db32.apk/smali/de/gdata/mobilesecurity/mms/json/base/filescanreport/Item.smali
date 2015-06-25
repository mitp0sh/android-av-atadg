.class public Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Date:Ljava/util/Date;

.field private FileName:Ljava/lang/String;

.field private Sender:Ljava/lang/Integer;

.field private State:Ljava/lang/Integer;

.field private VirusName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->Date:Ljava/util/Date;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->FileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->Sender:Ljava/lang/Integer;

    return-object v0
.end method

.method public getState()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->State:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVirusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->VirusName:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->Date:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->FileName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setSender(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->Sender:Ljava/lang/Integer;

    .line 24
    return-void
.end method

.method public setState(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->State:Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method public setVirusName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->VirusName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public withDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->Date:Ljava/util/Date;

    .line 58
    return-object p0
.end method

.method public withFileName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->FileName:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public withSender(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->Sender:Ljava/lang/Integer;

    .line 32
    return-object p0
.end method

.method public withState(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->State:Ljava/lang/Integer;

    .line 45
    return-object p0
.end method

.method public withVirusName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/filescanreport/Item;->VirusName:Ljava/lang/String;

    .line 84
    return-object p0
.end method
