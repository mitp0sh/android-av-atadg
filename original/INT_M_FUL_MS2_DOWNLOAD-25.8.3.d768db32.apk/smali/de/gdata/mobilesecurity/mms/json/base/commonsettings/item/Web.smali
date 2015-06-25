.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private EnableGuard:Ljava/lang/Boolean;

.field private EnableGuardOnlyWlan:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnableGuard()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->EnableGuard:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getEnableGuardOnlyWlan()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->EnableGuardOnlyWlan:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setEnableGuard(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->EnableGuard:Ljava/lang/Boolean;

    .line 9
    return-void
.end method

.method public setEnableGuardOnlyWlan(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->EnableGuardOnlyWlan:Ljava/lang/Boolean;

    .line 22
    return-void
.end method

.method public withEnableGuard(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->EnableGuard:Ljava/lang/Boolean;

    .line 17
    return-object p0
.end method

.method public withEnableGuardOnlyWlan(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Web;->EnableGuardOnlyWlan:Ljava/lang/Boolean;

    .line 30
    return-object p0
.end method
