.class public Lde/gdata/mobilesecurity/mms/json/UnblockAppResponse;
.super Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/PutResponse;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/requestunblockapp/PutResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/UnblockAppResponse;->a:Ljava/lang/String;

    .line 26
    return-void
.end method
