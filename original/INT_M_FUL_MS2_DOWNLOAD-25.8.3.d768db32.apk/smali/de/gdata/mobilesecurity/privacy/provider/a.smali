.class Lde/gdata/mobilesecurity/privacy/provider/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/provider/a;->a:Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    new-instance v0, Lde/gdata/mobilesecurity/privacy/CallLogObserver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/provider/a;->a:Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;-><init>(Landroid/content/Context;)V

    .line 410
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/CallLogObserver;->cleanAll()V

    .line 411
    return-void
.end method
