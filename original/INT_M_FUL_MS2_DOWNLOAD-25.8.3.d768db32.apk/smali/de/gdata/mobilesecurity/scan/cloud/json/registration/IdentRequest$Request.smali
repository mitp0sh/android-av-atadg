.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;
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
        value = "FLAVOR"
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CERT"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;->a:I

    .line 32
    const-string v0, "download"

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;->b:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;->c:Ljava/util/Map;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentRequest$Request;->c:Ljava/util/Map;

    return-object v0
.end method
