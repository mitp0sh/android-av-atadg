.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AutoUpdate:Ljava/lang/Boolean;

.field private AutoUpdateOnlyWlan:Ljava/lang/Boolean;

.field private Interval:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAutoUpdate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->AutoUpdate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAutoUpdateOnlyWlan()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->AutoUpdateOnlyWlan:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInterval()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->Interval:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAutoUpdate(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->AutoUpdate:Ljava/lang/Boolean;

    .line 10
    return-void
.end method

.method public setAutoUpdateOnlyWlan(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->AutoUpdateOnlyWlan:Ljava/lang/Boolean;

    .line 23
    return-void
.end method

.method public setInterval(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->Interval:Ljava/lang/Integer;

    .line 36
    return-void
.end method

.method public withAutoUpdate(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->AutoUpdate:Ljava/lang/Boolean;

    .line 18
    return-object p0
.end method

.method public withAutoUpdateOnlyWlan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->AutoUpdateOnlyWlan:Ljava/lang/Boolean;

    .line 31
    return-object p0
.end method

.method public withInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Update;->Interval:Ljava/lang/Integer;

    .line 44
    return-object p0
.end method
