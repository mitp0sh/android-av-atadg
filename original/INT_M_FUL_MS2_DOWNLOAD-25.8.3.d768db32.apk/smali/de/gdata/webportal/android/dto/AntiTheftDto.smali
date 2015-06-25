.class public Lde/gdata/webportal/android/dto/AntiTheftDto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCommonAction:Ljava/lang/Integer;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "commonAction"
    .end annotation
.end field

.field private mMail:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "email"
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
        include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_EMPTY:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "password"
    .end annotation
.end field

.field private mPhone:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "phone"
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/map/annotate/JsonSerialize;
        include = .enum Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_EMPTY:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .end annotation
.end field

.field private mProfileId:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "profileId"
    .end annotation
.end field

.field private mSimChangeAction:Ljava/lang/Integer;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "simChangeAction"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCommonAction()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mCommonAction:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mMail:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mProfileId:J

    return-wide v0
.end method

.method public getSimChangeAction()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mSimChangeAction:Ljava/lang/Integer;

    return-object v0
.end method

.method public setCommonAction(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mCommonAction:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method public setEMail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mMail:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mPassword:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mPhone:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setProfileId(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mProfileId:J

    .line 34
    return-void
.end method

.method public setSimChangeAction(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lde/gdata/webportal/android/dto/AntiTheftDto;->mSimChangeAction:Ljava/lang/Integer;

    .line 74
    return-void
.end method
