.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUBTYPE"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ANSWER"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;->a:I

    .line 32
    iput-object p1, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;->b:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getAnswer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtype()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeRequest$Request;->a:I

    return v0
.end method
