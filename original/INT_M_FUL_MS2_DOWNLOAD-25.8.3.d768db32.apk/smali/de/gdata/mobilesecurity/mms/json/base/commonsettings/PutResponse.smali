.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Result:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;->Result:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setResult(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 7
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;->Result:Ljava/lang/Boolean;

    .line 8
    return-void
.end method

.method public withResult(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;->Result:Ljava/lang/Boolean;

    .line 16
    return-object p0
.end method
