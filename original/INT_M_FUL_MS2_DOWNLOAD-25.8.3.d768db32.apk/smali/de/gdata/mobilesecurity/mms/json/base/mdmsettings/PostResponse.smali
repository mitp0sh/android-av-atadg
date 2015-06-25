.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AntiTheft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;",
            ">;"
        }
    .end annotation
.end field

.field private App:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;",
            ">;"
        }
    .end annotation
.end field

.field private CallFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;",
            ">;"
        }
    .end annotation
.end field

.field private Contact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private Policy:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

.field private Profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Profile:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->App:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->AntiTheft:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->CallFilter:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Contact:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAntiTheft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->AntiTheft:Ljava/util/List;

    return-object v0
.end method

.method public getApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->App:Ljava/util/List;

    return-object v0
.end method

.method public getCallFilter()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->CallFilter:Ljava/util/List;

    return-object v0
.end method

.method public getContact()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Contact:Ljava/util/List;

    return-object v0
.end method

.method public getPolicy()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Policy:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    return-object v0
.end method

.method public getProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Profile:Ljava/util/List;

    return-object v0
.end method

.method public setAntiTheft(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->AntiTheft:Ljava/util/List;

    .line 55
    return-void
.end method

.method public setApp(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->App:Ljava/util/List;

    .line 42
    return-void
.end method

.method public setCallFilter(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->CallFilter:Ljava/util/List;

    .line 68
    return-void
.end method

.method public setContact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Contact:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setPolicy(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Policy:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

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
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Profile:Ljava/util/List;

    .line 29
    return-void
.end method

.method public withAntiTheft(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/AntiTheft;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->AntiTheft:Ljava/util/List;

    .line 63
    return-object p0
.end method

.method public withApp(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/App;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->App:Ljava/util/List;

    .line 50
    return-object p0
.end method

.method public withCallFilter(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->CallFilter:Ljava/util/List;

    .line 76
    return-object p0
.end method

.method public withContact(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Contact;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Contact:Ljava/util/List;

    .line 89
    return-object p0
.end method

.method public withPolicy(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Policy:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Policy;

    .line 24
    return-object p0
.end method

.method public withProfile(Ljava/util/List;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile;",
            ">;)",
            "Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/PostResponse;->Profile:Ljava/util/List;

    .line 37
    return-object p0
.end method
