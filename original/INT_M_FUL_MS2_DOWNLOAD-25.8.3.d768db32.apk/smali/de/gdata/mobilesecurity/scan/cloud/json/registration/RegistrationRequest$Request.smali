.class public Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SUBTYPE"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest$Request;->a:I

    return-void
.end method


# virtual methods
.method public getSubtype()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/registration/RegistrationRequest$Request;->a:I

    return v0
.end method
