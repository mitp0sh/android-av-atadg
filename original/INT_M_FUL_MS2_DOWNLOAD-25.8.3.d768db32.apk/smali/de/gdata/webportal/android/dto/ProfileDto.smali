.class public Lde/gdata/webportal/android/dto/ProfileDto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEnabled:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "enabled"
    .end annotation
.end field

.field private mId:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "name"
    .end annotation
.end field

.field private mType:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mType:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mEnabled:Z

    .line 30
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 21
    iput-wide p1, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mId:J

    .line 22
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lde/gdata/webportal/android/dto/ProfileDto;->mType:I

    .line 38
    return-void
.end method
