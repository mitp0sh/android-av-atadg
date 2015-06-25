.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUBTYPE"
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CERT"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCert()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getSubtype()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/ChallengeResponse$Answer;->a:I

    return v0
.end method
