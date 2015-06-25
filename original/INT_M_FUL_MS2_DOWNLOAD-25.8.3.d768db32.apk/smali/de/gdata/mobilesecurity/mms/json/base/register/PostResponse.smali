.class public Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private AccessKey:Ljava/lang/String;

.field private SecretAccessKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;->AccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;->SecretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;->AccessKey:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public setSecretAccessKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;->SecretAccessKey:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public withAccessKey(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;->AccessKey:Ljava/lang/String;

    .line 17
    return-object p0
.end method

.method public withSecretAccessKey(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/register/PostResponse;->SecretAccessKey:Ljava/lang/String;

    .line 30
    return-object p0
.end method
