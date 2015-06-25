.class public Lde/gdata/mobilesecurity/privacy/ChatActivity;
.super Lde/gdata/mobilesecurity/fragments/GdSimpleFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lde/gdata/mobilesecurity/fragments/GdSimpleFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragmentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
