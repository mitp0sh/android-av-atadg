.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

.field private GcmSenderId:Ljava/lang/String;

.field private Items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;"
        }
    .end annotation
.end field

.field private Name:Ljava/lang/String;

.field private Profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private UpdateCredential:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Profile:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getClientInfo()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->GcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Items:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Profile:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateCredential()Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->UpdateCredential:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;

    return-object v0
.end method

.method public setClientInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    .line 42
    return-void
.end method

.method public setGcmSenderId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->GcmSenderId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Items:Ljava/util/List;

    .line 68
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Name:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setProfile(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Profile:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setUpdateCredential(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->UpdateCredential:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;

    .line 29
    return-void
.end method

.method public withClientInfo(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->ClientInfo:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;

    .line 50
    return-object p0
.end method

.method public withGcmSenderId(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->GcmSenderId:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public withItems(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Item;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Items:Ljava/util/List;

    .line 76
    return-object p0
.end method

.method public withName(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Name:Ljava/lang/String;

    .line 24
    return-object p0
.end method

.method public withProfile(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/Profile;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->Profile:Ljava/util/List;

    .line 63
    return-object p0
.end method

.method public withUpdateCredential(Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PostResponse;->UpdateCredential:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/UpdateCredential;

    .line 37
    return-object p0
.end method
