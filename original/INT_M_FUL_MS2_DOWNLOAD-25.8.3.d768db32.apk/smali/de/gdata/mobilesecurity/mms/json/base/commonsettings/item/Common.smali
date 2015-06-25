.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Mail:Ljava/lang/String;

.field private Phone:Ljava/lang/String;

.field private SyncInterval:Ljava/lang/Integer;

.field private SyncIntervalWlan:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->Mail:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->Phone:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->SyncInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSyncIntervalWlan()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->SyncIntervalWlan:Ljava/lang/Integer;

    return-object v0
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->Mail:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->Phone:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setSyncInterval(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->SyncInterval:Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method public setSyncIntervalWlan(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->SyncIntervalWlan:Ljava/lang/Integer;

    .line 50
    return-void
.end method

.method public withMail(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->Mail:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public withPhone(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->Phone:Ljava/lang/String;

    .line 19
    return-object p0
.end method

.method public withSyncInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->SyncInterval:Ljava/lang/Integer;

    .line 45
    return-object p0
.end method

.method public withSyncIntervalWlan(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->SyncIntervalWlan:Ljava/lang/Integer;

    .line 58
    return-object p0
.end method
