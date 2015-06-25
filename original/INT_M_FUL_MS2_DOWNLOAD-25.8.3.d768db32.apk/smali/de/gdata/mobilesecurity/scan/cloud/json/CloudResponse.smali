.class public abstract Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;
.super Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;",
        "AnswerType:",
        "Ljava/lang/Object;",
        ">",
        "Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol",
        "<TResponse;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ANSWER"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAnswerType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lde/gdata/mobilesecurity/scan/cloud/json/CloudProtocol;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method protected getAnswer()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAnswerType;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lde/gdata/mobilesecurity/scan/cloud/json/CloudResponse;->a:Ljava/lang/Object;

    return-object v0
.end method
