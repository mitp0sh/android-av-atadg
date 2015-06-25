.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer$Cert;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PRIV"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/IdentResponse$Answer$Cert;->a:Ljava/lang/String;

    return-object v0
.end method
