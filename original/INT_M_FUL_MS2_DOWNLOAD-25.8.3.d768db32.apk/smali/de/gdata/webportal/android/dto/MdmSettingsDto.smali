.class public Lde/gdata/webportal/android/dto/MdmSettingsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAntiTheft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/android/dto/AntiTheftDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "antiTheft"
    .end annotation
.end field

.field private mProfile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/android/dto/ProfileDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "profile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/webportal/android/dto/MdmSettingsDto;->mProfile:Ljava/util/List;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/gdata/webportal/android/dto/MdmSettingsDto;->mAntiTheft:Ljava/util/List;

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
            "Lde/gdata/webportal/android/dto/AntiTheftDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lde/gdata/webportal/android/dto/MdmSettingsDto;->mAntiTheft:Ljava/util/List;

    return-object v0
.end method

.method public getProfile()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/android/dto/ProfileDto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lde/gdata/webportal/android/dto/MdmSettingsDto;->mProfile:Ljava/util/List;

    return-object v0
.end method

.method public setAntiTheft(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/android/dto/AntiTheftDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/webportal/android/dto/MdmSettingsDto;->mAntiTheft:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setProfile(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/webportal/android/dto/ProfileDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lde/gdata/webportal/android/dto/MdmSettingsDto;->mProfile:Ljava/util/List;

    .line 21
    return-void
.end method
