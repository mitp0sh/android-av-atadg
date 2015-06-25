.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Enabled:Ljava/lang/Boolean;

.field private Id:Ljava/lang/Long;

.field private Name:Ljava/lang/String;

.field private Type:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Id:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Type:Ljava/lang/Integer;

    return-object v0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Enabled:Ljava/lang/Boolean;

    .line 29
    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Id:Ljava/lang/Long;

    .line 16
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Type:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public withEnabled(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Enabled:Ljava/lang/Boolean;

    .line 37
    return-object p0
.end method

.method public withId(Ljava/lang/Long;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Id:Ljava/lang/Long;

    .line 24
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Name:Ljava/lang/String;

    .line 63
    return-object p0
.end method

.method public withType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;->Type:Ljava/lang/Integer;

    .line 50
    return-object p0
.end method
